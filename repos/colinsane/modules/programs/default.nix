{ config, lib, options, pkgs, sane-lib, utils, ... }:
let
  saneCfg = config.sane;
  cfg = config.sane.programs;

  # create a map:
  # {
  #   "${pkgName}" = {
  #     system = true|false;
  #     user = {
  #       "${name}" = true|false;
  #     };
  #   };
  # }
  # for every ${pkgName} in pkgSpecs.
  # `system = true|false` is a computed expression over all the other programs, as evaluated.
  solveDefaultEnableFor = pkgSpecs: lib.foldlAttrs (
    acc: pname: pval: (
      # add "${enableName}".system |= areSuggestionsEnabled pval
      # for each `enableName` in pval.suggestedPrograms.
      # do the same for `user` field.
      lib.foldl (acc': enableName: acc' // {
        "${enableName}" = let
          super = acc'."${enableName}";
        in {
          system = super.system || (pval.enableFor.system && pval.enableSuggested);
          user = super.user // lib.filterAttrs (_u: en: en && pval.enableSuggested) pval.enableFor.user;
        };
      }) acc pval.suggestedPrograms
    )
  ) (mkDefaultEnables pkgSpecs) pkgSpecs;
  mkDefaultEnables = lib.mapAttrs (_pname: _pval: { system = false; user = {}; });
  defaultEnables = solveDefaultEnableFor cfg;

  # wrap a package so that its binaries (maybe) run in a sandbox
  wrapPkg = pkgName: { fs, persist, sandbox, ... }: package: (
    if !sandbox.enable || sandbox.method == null then
      package
    else
      let
        makeSandboxArgs = pkgs.callPackage ./make-sandbox-args.nix { };
        # makeSandboxed = pkgs.callPackage ./make-sandboxed.nix { sanebox = config.sane.programs.sanebox.package; };
        makeSandboxed = pkgs.callPackage ./make-sandboxed.nix { };

        vpn = if sandbox.net == "vpn" then
          lib.findSingle (v: v.isDefault) null null (builtins.attrValues config.sane.vpn)
        else if sandbox.net == "vpn.wg-home" then
          config.sane.vpn.wg-home
        else
          null
        ;

        allowedHomePaths = builtins.attrNames fs ++ builtins.attrNames persist.byPath ++ sandbox.extraHomePaths;
        allowedRunPaths = sandbox.extraRuntimePaths;
        allowedPaths = [
          "/nix/store"
          "/bin/sh"

          "/etc"  #< especially for /etc/profiles/per-user/$USER/bin
          "/run/current-system"  #< for basics like `ls`, and all this program's `suggestedPrograms` (/run/current-system/sw/bin)
          # "/run/wrappers"  #< SUID wrappers. they don't mean much inside a namespace.
          # /run/opengl-driver is a symlink into /nix/store; needed by e.g. mpv
          "/run/opengl-driver"
          "/run/opengl-driver-32"  #< XXX: doesn't exist on aarch64?
          "/usr/bin/env"
        ] ++ lib.optionals (sandbox.net == "all" && config.services.resolved.enable) [
          "/run/systemd/resolve"  #< to allow reading /etc/resolv.conf, which ultimately symlinks here (if using systemd-resolved)
        ] ++ lib.optionals (sandbox.net == "all" && config.services.avahi.enable) [
          "/var/run/avahi-daemon"  #< yes, it has to be "/var/run/...". required for nss (e.g. `getent hosts desko.local`)
        ] ++ lib.optionals (builtins.elem "system" sandbox.whitelistDbus) [
          "/var/run/dbus/system_bus_socket"  #< XXX: use /var/run/..., for the rare program which requires that (i.e. avahi users)
        ] ++ sandbox.extraPaths
        ;

        sandboxArgs = makeSandboxArgs {
          inherit (sandbox)
            autodetectCliPaths
            capabilities
            extraConfig
            method
            whitelistPwd
          ;
          netDev = if vpn != null then
            vpn.name
          else
            sandbox.net;
          netGateway = if vpn != null then
            vpn.addrV4
          else
            null;
          dns = if vpn != null then
            vpn.dns
          else
            null;
          # the sandboxer should understand how to work with duplicated paths, but it's annoying => `lib.unique`
          allowedPaths = lib.unique allowedPaths;
          allowedHomePaths = lib.unique allowedHomePaths;
          allowedRunPaths = lib.unique allowedRunPaths;
        };
      in
        makeSandboxed {
          inherit pkgName package;
          inherit (sandbox)
            embedSandboxer
            wrapperType
          ;
          extraSandboxerArgs = sandboxArgs;
        }
  );
  pkgSpec = with lib; types.submodule ({ config, name, ... }: {
    options = {
      packageUnwrapped = mkOption {
        type = types.nullOr types.package;
        description = ''
          package, or `null` if the program is some sort of meta set (in which case it much EXPLICITLY be set null).
        '';
        default =
          let
            pkgPath = lib.splitString "." name;
          in
            # package can be inferred by the attr name, allowing shorthand like
            #   `sane.programs.nano.enable = true;`
            # this indexing will throw if the package doesn't exist and the user forgets to specify
            # a valid source explicitly.
            lib.getAttrFromPath pkgPath pkgs;
      };
      package = mkOption {
        type = types.nullOr types.package;
        description = ''
          assigned internally.
          this is `packageUnwrapped`, but with the binaries possibly wrapped in sandboxing measures.
        '';
      };
      enableFor.system = mkOption {
        type = types.bool;
        default = defaultEnables."${name}".system;
        description = ''
          place this program on the system PATH
        '';
      };
      enableFor.user = mkOption {
        type = types.attrsOf types.bool;
        default = defaultEnables."${name}".user;
        description = ''
          place this program on the PATH for some specified user(s).
        '';
      };
      enabled = mkOption {
        type = types.bool;
        description = ''
          generated (i.e. read-only) value indicating if the program is enabled either for any user or for the system.
        '';
      };
      suggestedPrograms = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          list of other programs a user may want to enable alongside this one.
          for example, the gnome desktop environment would suggest things like its settings app.
        '';
      };
      enableSuggested = mkOption {
        type = types.bool;
        default = true;
      };
      mime.priority = mkOption {
        type = types.int;
        default = 100;
        description = ''
          program with the numerically lower priority takes precedence whenever two mime associations overlap.
        '';
      };
      mime.associations = mkOption {
        type = types.attrsOf types.str;
        default = {};
        description = ''
          mime associations. each entry takes the form of:
            "<mime type>" = "<launcher>.desktop"
          e.g.
          {
            "audio/flac" = "vlc.desktop";
            "application/pdf" = "org.gnome.Evince.desktop";
          }
        '';
      };
      mime.urlAssociations = mkOption {
        # TODO: it'd be cool to have the value part of this be `.desktop` files.
        # mimeo doesn't quite do that well. would need a wrapper script which does `mimeo --desk2field Exec mpv.desktop` to get the command
        # and then interpolate the paths into it (%U)
        type = types.attrsOf types.str;
        default = {};
        description = ''
          map of regex -> command.
          e.g. "^https?://(www.)?youtube.com/watch\?.*v=" = "mpv %U"
        '';
      };
      persist = mkOption {
        type = options.sane.persist.sys.type;
        default = {};
        description = ''
          entries to pass onto `sane.persist.sys` or `sane.user.persist`
          when this program is enabled.
        '';
      };
      fs = mkOption {
        # funny type to allow deferring the option merging down to the layer below
        type = types.attrsOf (types.coercedTo types.attrs (a: [ a ]) (types.listOf types.attrs));
        default = {};
        description = "files to populate when this program is enabled";
      };
      secrets = mkOption {
        type = types.attrsOf types.path;
        default = {};
        description = ''
          fs paths to link to some decrypted secret.
          the secret will have same owner as the user under which the program is enabled.
        '';
      };
      env = mkOption {
        type = types.attrsOf types.str;
        default = {};
        description = ''
          environment variables to set when this program is enabled.
          env vars set here are intended to propagate everywhere into the user's (or system's) session/services;
          they aren't visible just to the program which specified them.
        '';
      };
      services = mkOption {
        type = options.sane.user._options.services.type;
        default = {};
        description = ''
          user services to define if this package is enabled.
          acts as noop for root-enabled packages.
          see `sane.users.<user>.services` for options;
        '';
        # TODO: this `apply` should by moved to where we pass the `services` down to `sane.users`
        apply = lib.mapAttrs (svcName: svcCfg:
          svcCfg // lib.optionalAttrs (builtins.tryEval svcCfg.description).success {
            # ensure service dependencies based on what a service's program whitelists.
            # only do this for the services which are *defined* by this program though (i.e. `scvCfg ? description`)
            # so as to avoid idioms like when sway adds `graphical-session.partOf = default`
            depends = svcCfg.depends
              ++ lib.optionals (((config.persist.byStore or {}).private or []) != []) [
              "private-storage"
            ] ++ lib.optionals (svcName != "dbus" && builtins.elem "user" config.sandbox.whitelistDbus && cfg.dbus.enabled) [
              "dbus"
            ] ++ lib.optionals ((!builtins.elem "wayland" svcCfg.partOf) && config.sandbox.whitelistWayland) [
              "wayland"
            ] ++ lib.optionals ((!builtins.elem "x11" svcCfg.partOf) && config.sandbox.whitelistX) [
              "x11"
            ] ++ lib.optionals ((!builtins.elem "sound" svcCfg.partOf) && config.sandbox.whitelistAudio) [
              "sound"
            ];
          }
        );
      };
      buildCost = mkOption {
        type = types.enum [ 0 1 2 3 ];
        default = 0;
        description = ''
          whether this package is very slow, or has unique dependencies which are very slow to build.
          marking packages like this can be used to achieve faster, but limited, rebuilds/deploys (by omitting the package).
          - 0: this package is necessary for baseline usability
          - 1: this package is a nice-to-have, and not too costly to build
          - 2: this package is a nice-to-have, but costly to build (e.g. `libreoffice`, some webkitgtk-based things)
          - 3: this package is costly to build, and could go without (some lesser-used webkitgtk-based things)
        '';
      };
      sandbox.net = mkOption {
        type = types.coercedTo
          types.str
          (s: if s == "clearnet" || s == "localhost" then "all" else s)
          (types.enum [ null "all" "vpn" "vpn.wg-home" ]);
        default = null;
        description = ''
          how this app should have its network traffic routed.
          - "all": unsandboxed network.
          - "clearnet": traffic is routed only over clearnet.
            currently, just an alias for "all".
          - "localhost": only needs access to other services running on this host.
            currently, just an alias for "all".
          - "vpn": to route all traffic over the default VPN.
          - "vpn.wg-home": to route all traffic over the wg-home VPN.
          - null: to maximally isolate from the network.
        '';
      };
      sandbox.method = mkOption {
        type = types.nullOr (types.enum [ "bwrap" "capshonly" "pastaonly" "landlock" ]);
        default = null;  #< TODO: default to something non-null
        description = ''
          how/whether to sandbox all binaries in the package.
        '';
      };
      sandbox.enable = mkOption {
        type = types.bool;
        default = true;
      };
      sandbox.embedSandboxer = mkOption {
        type = types.bool;
        default = false;
        description = ''
          whether the sandboxed application should reference its sandboxer by path or by name.
        '';
      };
      sandbox.wrapperType = mkOption {
        type = types.enum [ "inplace" "wrappedDerivation" ];
        default = "wrappedDerivation";
        description = ''
          how to manipulate the `packageUnwrapped` derivation in order to achieve sandboxing.
          - inplace: applies an override to `packageUnwrapped`, so that all `bin/` files are sandboxed,
                     and call into un-sandboxed dot-files within `bin/` (like makeWrapper does).
          - wrappedDerivation: leaves the input derivation unchanged, and creates a _new_ derivation whose
                               binaries wrap the binaries in the original derivation with a sandbox.

          "inplace" is more reliable, but "wrappedDerivation" is more lightweight (doesn't force any rebuilds).
          the biggest gap in "wrappedDerivation" is that it doesn't link anything outside `bin/`, except for
          some limited (verified safe) support for `share/applications/*.desktop`
        '';
      };
      sandbox.autodetectCliPaths = mkOption {
        type = types.coercedTo types.bool
          (b: if b then "existing" else null)
          (types.nullOr (types.enum [ "existing" "existingFile" "existingFileOrParent" "existingOrParent" "parent" ]));
        default = null;
        description = ''
          if a CLI argument looks like a PATH, should we add it to the sandbox?
          - null => never
          - "existing" => only if the path exists.
          - "existingFile" => only if the path exists *and is file-like* (i.e. a file or a symlink to a file, but not a directory)
          - "parent" => allow access to the directory containing any file (whether that file exists or not). useful for certain media viewers/library managers.
          - "existingOrParent" => add the path if it exists; if not, add its parent if that exists. useful for programs which create files or directories.
          - "existingFileOrParent" => add the path if it exists and is file-like; if not, add its parent if that exists. useful for programs which create files.
        '';
      };
      sandbox.capabilities = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          list of Linux capabilities the program needs. lowercase, and without the cap_ prefix.
          e.g. sandbox.capabilities = [ "net_admin" "net_raw" ];
        '';
      };
      sandbox.isolatePids = mkOption {
        type = types.bool;
        default = true;
        description = ''
          whether to place the process in a new PID namespace, if the sandboxer supports that.
        '';
      };
      sandbox.isolateUsers = mkOption {
        type = types.bool;
        default = true;
        description = ''
          whether to place the process in a new user namespace, if the sandboxer supports that.
        '';
      };
      sandbox.whitelistAudio = mkOption {
        type = types.bool;
        default = false;
        description = ''
          allow sandbox to freely interact with pulse/pipewire.
        '';
      };
      sandbox.whitelistDbus = mkOption {
        type = types.listOf (types.enum [ "user" "system" ]);
        default = [ ];
        description = ''
          allow sandbox to freely interact with dbus services.
        '';
      };
      sandbox.whitelistDri = mkOption {
        type = types.bool;
        default = false;
        description = ''
          allow sandbox to access the kernel's /dev/dri interface(s).
          this enables GPU acceleration, particularly for mesa applications,
          however, this basically amounts to letting the sandbox send GPU-specific
          commands directly to the GPU (or, its kernel module), which is a rather
          broad and unaudited attack surface.
        '';
      };
      sandbox.whitelistPwd = mkOption {
        type = types.bool;
        default = false;
        description = ''
          allow the program full access to whichever directory it was launched from.
        '';
      };
      sandbox.whitelistS6 = mkOption {
        type = types.bool;
        default = false;
        description = ''
          allow the program to start/stop s6 services.
        '';
      };
      sandbox.whitelistWayland = mkOption {
        type = types.bool;
        default = false;
        description = ''
          allow sandbox to communicate with the wayland server.
          note that this does NOT permit access to compositor admin tooling like `swaymsg`.
        '';
      };
      sandbox.whitelistX = mkOption {
        type = types.bool;
        default = false;
        description = ''
          allow the sandbox to communicate with the X server.
          typically, this is actually the Xwayland server and you should also enable `whitelistWayland`.
        '';
      };

      sandbox.extraPaths = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          additional absolute paths to bind into the sandbox.
        '';
      };
      sandbox.extraHomePaths = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          additional home-relative paths to bind into the sandbox.
        '';
      };
      sandbox.extraRuntimePaths = mkOption {
        type = types.listOf types.str;
        default = [ ];
        description = ''
          additional $XDG_RUNTIME_DIR-relative paths to bind into the sandbox.
          e.g. `[ "bus" "wayland-1" ]` to bind the dbus and wayland sockets.
          or `[ "/" ]` to bind all of XDG_RUNTIME_DIR.
        '';
      };
      sandbox.extraConfig = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          extra arguments to pass to the sandbox wrapper.
          example: [
            "--sanebox-dns"
            "1.1.1.1"
          ]
        '';
      };
      sandbox.usePortal = mkOption {
        type = types.bool;
        default = true;
        description = ''
          instruct the sandboxed program to open external applications
          via calls to xdg-desktop-portal.
        '';
      };
      configOption = mkOption {
        type = types.raw;
        default = mkOption {
          type = types.submodule {};
          default = {};
        };
        description = ''
          declare any other options the program may be configured with.
          you probably want this to be a submodule.
          the option *definitions* can be set with `sane.programs."foo".config = ...`.
        '';
      };
      config = config.configOption;
    };

    config = let
      enabledForUser = builtins.any (en: en) (lib.attrValues config.enableFor.user);
      passesSlowTest = config.buildCost <= saneCfg.maxBuildCost;
    in {
      enabled = (config.enableFor.system || enabledForUser) && passesSlowTest;
      package = if config.packageUnwrapped == null then
        null
      else
        wrapPkg name config config.packageUnwrapped
      ;
      suggestedPrograms = lib.optionals (config.sandbox.method == "bwrap") [
        "bubblewrap" "passt" "iproute2" "iptables"
      ] ++ lib.optionals (config.sandbox.method == "landlock") [
        "landlock-sandboxer" "capsh"
      ] ++ lib.optionals (config.sandbox.method == "pastaonly") [
        "passt" "iproute2" "iptables" "capsh"
      ] ++ lib.optionals (config.sandbox.method == "capshonly") [
        "capsh"
      ];
      # declare a fs dependency for each secret, but don't specify how to populate it yet.
      #   can't populate it here because it varies per-user.
      # this gets the symlink into the sandbox, but not the actual secret.
      fs = lib.mapAttrs (_homePath: _secretSrc: {}) config.secrets;

      sandbox.extraPaths =
        lib.optionals config.sandbox.whitelistDri [
          # /dev/dri/renderD128: requested by wayland-egl (e.g. KOreader, animatch, geary)
          # - but everything seems to gracefully fallback to *something* (MESA software rendering?)
          #   - CPU usage difference between playing videos in Gtk apps (e.g. fractal) with v.s. without DRI is 10% v.s. 90%.
          # - GPU attack surface is *large*: <https://security.stackexchange.com/questions/182501/modern-linux-gpu-driver-security>
          "/dev/dri" "/sys/dev/char" "/sys/devices" # (lappy: "/sys/devices/pci0000:00", moby needs something different)
        ]
        ++ lib.optionals config.sandbox.whitelistX [ "/tmp/.X11-unix" ]
      ;
      sandbox.extraRuntimePaths =
        lib.optionals config.sandbox.whitelistAudio [ "pipewire" "pulse" ]  # this includes pipewire/pipewire-0-manager: is that ok?
        ++ lib.optionals (builtins.elem "user" config.sandbox.whitelistDbus) [ "bus" ]
        ++ lib.optionals config.sandbox.whitelistWayland [ "wl" ]  # app can still communicate with wayland server w/o this, if it has net access
        ++ lib.optionals config.sandbox.whitelistS6 [ "s6" ]  # TODO: this allows re-writing the services themselves: don't allow that!
      ;
      sandbox.extraHomePaths = let
        whitelistDir = dir: lib.optionals (lib.any (p: lib.hasPrefix "${dir}/" p) (builtins.attrNames config.fs)) [
          dir
        ];
        mainProgram = (config.packageUnwrapped.meta or {}).mainProgram or null;
      in
        # assume the program is free to access any files in ~/.config/<name>, ~/.local/share/<name> -- if those exist.
        # the benefit of this is that the program will see updates to its files made *outside* of the sandbox,
        # allowing e.g. manual modification of ~/.config/FOO/thing.json to be seen by the program.
        whitelistDir ".config/${name}"
        ++ whitelistDir ".local/share/${name}"
        # some packages, e.g. swaynotificationcenter, store the config under the binary name instead of the package name
        ++ lib.optionals (mainProgram != null) (whitelistDir ".config/${mainProgram}")
        ++ lib.optionals (mainProgram != null) (whitelistDir ".local/share/${mainProgram}")
      ;
      sandbox.extraConfig = lib.optionals config.sandbox.usePortal [
        "--sanebox-portal"
      ] ++ lib.optionals (!config.sandbox.isolatePids) [
        "--sanebox-keep-namespace" "pid"
      ] ++ lib.optionals (!config.sandbox.isolateUsers) [
        "--sanebox-keep-namespace" "user"
      ];
    };
  });
  toPkgSpec = with lib; types.coercedTo types.package (p: { package = p; }) pkgSpec;

  configs = lib.mapAttrsToList (name: p: {
    assertions = [
      {
        assertion = !(p.sandbox.enable && p.sandbox.method == null) || !p.enabled || p.package == null || config.sane.strictSandboxing != "assert";
        message = "program ${name} specified no `sandbox.method`; please configure a method, or set sandbox.enable = false.";
      }
      {
        assertion = p.sandbox.net == "all" || p.sandbox.method != null || !p.enabled || p.package == null || config.sane.strictSandboxing != "assert";
        message = ''program "${name}" requests net "${builtins.toString p.sandbox.net}", which requires sandboxing, but sandboxing wasn't configured'';
      }
    ] ++ builtins.map (sug: {
      assertion = cfg ? "${sug}";
      message = ''program "${sug}" referenced by "${name}", but not defined'';
    }) p.suggestedPrograms;

    warnings = lib.mkIf (config.sane.strictSandboxing == "warn" && p.sandbox.enable && p.sandbox.method == null && p.enabled && p.package != null) [
      "program ${name} specified no `sandbox.method`; please configure a method, or set sandbox.enable = false."
    ];

    system.checks = lib.mkIf (p.enabled && p.sandbox.enable && p.sandbox.method != null && p.package != null) [
      p.package.passthru.checkSandboxed
    ];

    # conditionally add to system PATH and env
    environment = lib.optionalAttrs (p.enabled && p.enableFor.system) {
      systemPackages = lib.mkIf (p.package != null) [ p.package ];
      # sessionVariables are set by PAM, as opposed to environment.variables which goes in /etc/profile
      sessionVariables = p.env;
    };

    # conditionally add to user(s) PATH
    users.users = lib.mapAttrs (userName: en: {
      packages = lib.mkIf (p.package != null && en && p.enabled) [ p.package ];
    }) p.enableFor.user;

    # conditionally persist relevant user dirs and create files
    sane.users = lib.mapAttrs (user: en: lib.mkIf (en && p.enabled) {
      inherit (p) persist services;
      environment = p.env;
      fs = lib.mkMerge [
        p.fs
        # link every secret into the fs:

        (lib.mapAttrs
          # TODO: user the user's *actual* home directory, don't guess.
          (homePath: _src: sane-lib.fs.wantedSymlinkTo "/run/secrets/home/${user}/${homePath}")
          p.secrets
        )
        # alternative double indirection which may be slightly friendlier to sandboxing:
        #   ~/.config/FOO.secret => ~/.config/secrets/.config/FOO.secret => /run/secrets/home/${user}/.config/FOO.secret
        # whereas /run/secrets/* is unreadable *except* for the leafs, ~/.config/secrets is readable and traversable by $USER.
        # (lib.mapAttrs
        #   # TODO: user the user's *actual* home directory, don't guess.
        #   (homePath: _src: sane-lib.fs.wantedSymlinkTo "/home/${user}/.config/secrets/${homePath}")
        #   p.secrets
        # )
        # (lib.mapAttrs'
        #   (homePath: _src: {
        #     name = ".config/secrets/${homePath}";
        #     value = sane-lib.fs.wantedSymlinkTo "/run/secrets/home/${user}/${homePath}";
        #   })
        #   p.secrets
        # )
      ];
    }) p.enableFor.user;

    # make secrets available for each user
    sops.secrets = lib.concatMapAttrs
      (user: en: lib.mkIf (en && p.enabled) (
        lib.mapAttrs'
          (homePath: src: {
            # TODO: use the user's *actual* home directory, don't guess.
            # XXX: name CAN'T START WITH '/', else sops creates the directories funny.
            # TODO: report this upstream.
            name = "home/${user}/${homePath}";
            value = {
              owner = user;
              sopsFile = src;
              format = "binary";
            };
          })
          p.secrets
      ))
      p.enableFor.user;

  }) cfg;
in
{
  options = with lib; {
    # TODO: consolidate these options under one umbrella attrset
    sane.programs = mkOption {
      type = types.attrsOf toPkgSpec;
      default = {};
    };
    sane.maxBuildCost = mkOption {
      type = types.enum [ 0 1 2 3 ];
      default = 3;
      description = ''
        max build cost of programs to ship.
        set to 0 to get the fastest, but most restrictive build.
      '';
    };
    sane.strictSandboxing = mkOption {
      type = types.enum [ false "warn" "assert" ];
      default = "warn";
      description = ''
        whether to require that every `sane.program` explicitly specify its sandbox settings.
      '';
    };
  };

  config =
    let
      take = f: {
        assertions = f.assertions;
        environment.systemPackages = f.environment.systemPackages;
        environment.sessionVariables = f.environment.sessionVariables;
        users.users = f.users.users;
        sane.users = f.sane.users;
        sops.secrets = f.sops.secrets;
        system.checks = f.system.checks;
        warnings = f.warnings;
      };
    in lib.mkMerge [
      (take (sane-lib.mkTypedMerge take configs))
      {
        sane.programs.sanebox.enableFor.system = true;
        # expose the pkgs -- as available to the system -- as a build target.
        system.build.pkgs = pkgs;
      }
    ];
}
