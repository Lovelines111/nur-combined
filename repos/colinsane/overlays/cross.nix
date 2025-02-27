# outstanding cross-compilation PRs/issues:
# - all: <https://github.com/NixOS/nixpkgs/labels/6.topic%3A%20cross-compilation>
# - qtsvg mixed deps: <https://github.com/NixOS/nixpkgs/issues/269756>
#   - big Qt fix: <https://github.com/NixOS/nixpkgs/pull/267311>
#
# outstanding issues:
# - 2023/10/10: build python3 is pulled in by many things
#   - nix why-depends --all /nix/store/8g3kd2jxifq10726p6317kh8srkdalf5-nixos-system-moby-23.11.20231011.dirty /nix/store/pzf6dnxg8gf04xazzjdwarm7s03cbrgz-python3-3.10.12/bin/python3.10
#   - gstreamer-vaapi -> gstreamer-dev -> glib-dev
#   - portfolio -> {glib,cairo,pygobject}-dev
#   - komikku -> python3.10-brotlicffi -> python3.10-cffi
#   - many others. python3.10-cffi seems to be the offender which infects 70% of consumers though
# - 2023/10/11: build ruby is pulled in by `neovim`:
#   - nix why-depends --all /nix/store/rhli8vhscv93ikb43639c2ysy3a6dmzp-nixos-system-moby-23.11.20231011.30c7fd8 /nix/store/5xbwwbyjmc1xvjzhghk6r89rn4ylidv8-ruby-3.1.4
# - 2023/12/19: rustPlatform.cargoSetupHook outside of `buildRustPackage` or python packages is a mess
#   - it doesn't populate `.cargo/config` with valid cross-compilation config
#   - something to do with the way it's spliced: `nativeBuildInputs = [ rustPlatform.cargoSetupHook.__spliced.hostHost ]` (or hostTarget) WORKS
#   - see <https://github.com/NixOS/nixpkgs/pull/260068> -- it's probably wrong.
#   - WIP fix in `pr-cross-cargo`/`pr-cross-cargo2` nixpkgs branch.
#     - sanity check by building `pkgsCross.aarch64-multiplatform.rav1e`, and the `fd` program mentioned in PR 260068
#     - `pkgsCross.musl64.fd`
#     - `pkgsStatic.fd`
#   - this is way too tricky to enable cross compilation without breaking the musl stuff.
#     - i lost a whole day trying to get it to work: don't do it!
#
# partially fixed:
# - 2023/10/11: build coreutils pulled in by rpm 4.18.1, but NOT by 4.19.0
#   - nix why-depends --all /nix/store/gjwd2x507x7gjycl5q0nydd39d3nkwc5-dtrx-8.5.3-aarch64-unknown-linux-gnu /nix/store/y9gr7abwxvzcpg5g73vhnx1fpssr5frr-coreutils-9.3
#
# outstanding issues for software i don't have deployed:
# - gdk-pixbuf doesn't generate `gdk-pixbuf-thumbnailer` on cross
#   - been this way since 2018: <https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/merge_requests/20>
#   - as authored upstream, thumbnailer depends on loader.cache, and neither are built during cross compilation.
#   - nixos manually builds loader.cache in postInstall (via emulator).
#   - even though we have loader.cache, ordering means that thumbnailer still can't be built.
#   - solution is probably to integrate meson's cross_file stuff, and pushing all this emulation upstream.

final: prev:
let
  inherit (prev) lib;
  ## package override helpers
  addInputs = { buildInputs ? [], nativeBuildInputs ? [], depsBuildBuild ? [] }: pkg: pkg.overrideAttrs (upstream: {
    buildInputs = upstream.buildInputs or [] ++ buildInputs;
    nativeBuildInputs = upstream.nativeBuildInputs or [] ++ nativeBuildInputs;
    depsBuildBuild = upstream.depsBuildBuild or [] ++ depsBuildBuild;
  });
  addNativeInputs = nativeBuildInputs: addInputs { inherit nativeBuildInputs; };
  addBuildInputs = buildInputs: addInputs { inherit buildInputs; };
  addDepsBuildBuild = depsBuildBuild: addInputs { inherit depsBuildBuild; };
  mvToNativeInputs = nativeBuildInputs: mvInputs { inherit nativeBuildInputs; };
  mvToBuildInputs = buildInputs: mvInputs { inherit buildInputs; };
  rmInputs = { buildInputs ? [], nativeBuildInputs ? [] }: pkg: pkg.overrideAttrs (upstream: {
    buildInputs = lib.subtractLists buildInputs (upstream.buildInputs or []);
    nativeBuildInputs = lib.subtractLists nativeBuildInputs (upstream.nativeBuildInputs or []);
  });
  rmNativeInputs = nativeBuildInputs: rmInputs { inherit nativeBuildInputs; };
  # move items from buildInputs into nativeBuildInputs, or vice-versa.
  # arguments represent the final location of specific inputs.
  mvInputs = { buildInputs ? [], nativeBuildInputs ? [] }: pkg:
    addInputs { buildInputs = buildInputs; nativeBuildInputs = nativeBuildInputs; }
    (
      rmInputs { buildInputs = nativeBuildInputs; nativeBuildInputs = buildInputs; }
      pkg
    );

  # build a GI_TYPELIB_PATH out of some packages, useful for build-time tools which otherwise
  # try to load gobject-introspection files for the wrong platform (e.g. `blueprint` compiler).
  typelibPath = pkgs: lib.concatStringsSep ":" (builtins.map (p: "${lib.getLib p}/lib/girepository-1.0") pkgs);

  # `cargo` which adds the correct env vars and `--target` flag when invoked from meson build scripts
  crossCargo = let
    inherit (final.pkgsBuildHost) cargo;
    inherit (final.rust.envVars) setEnv rustHostPlatformSpec;
  in (final.pkgsBuildBuild.writeShellScriptBin "cargo" ''
    exec ${setEnv} "${lib.getExe cargo}" "$@" --target "${rustHostPlatformSpec}"
  '').overrideAttrs {
    inherit (cargo) meta;
  };
in with final; {

  # 2024/05/31: upstreaming is unblocked (but this solution no longer works)
  # apacheHttpd_2_4 = prev.apacheHttpd_2_4.overrideAttrs (upstream: {
  #   configureFlags = upstream.configureFlags or [] ++ [
  #     "ap_cv_void_ptr_lt_long=no"  # configure can't AC_TRY_RUN, and can't validate that sizeof (void*) == sizeof long
  #   ];
  #   # let nix figure out the perl shebangs.
  #   # some of these perl scripts are shipped on the host, others in the .dev output for the build machine.
  #   # postPatch methods create cycles
  #   # postPatch = ''
  #   #   substituteInPlace configure --replace \
  #   #     '/replace/with/path/to/perl/interpreter' \
  #   #     '/usr/bin/perl'
  #   # '';
  #   # postPatch = ''
  #   #   substituteInPlace support/apxs.in --replace \
  #   #     '@perlbin@' \
  #   #     '/usr/bin/perl'
  #   # '';
  #   postFixup = upstream.postFixup or "" + ''
  #     sed -i 's:/replace/with/path/to/perl/interpreter:${buildPackages.perl}/bin/perl:' $dev/bin/apxs
  #   '';
  # });

  # apacheHttpdPackagesFor = apacheHttpd: self:
  #   let
  #     prevHttpdPkgs = prev.apacheHttpdPackagesFor apacheHttpd self;
  #   in prevHttpdPkgs // {
  #     # fixes "configure: error: *** Sorry, could not find apxs ***"
  #     # N.B.: the below apxs doesn't have a valid shebang (#!/replace/with/...).
  #     #   we can't replace it at the origin?
  #     mod_dnssd = prevHttpdPkgs.mod_dnssd.overrideAttrs (upstream: {
  #       configureFlags = upstream.configureFlags ++ [
  #         "--with-apxs=${self.apacheHttpd.dev}/bin"
  #       ];
  #     });
  #   };

  # 2024/08/19: upstreaming is unblocked
  ayatana-ido = addNativeInputs [ glib ] prev.ayatana-ido;
  libayatana-indicator = addNativeInputs [ glib ] prev.libayatana-indicator;

  # bamf: required via pantheon.switchboard -> wingpanel -> gala
  # bamf = prev.bamf.overrideAttrs (upstream: {
  #   # "You must have gtk-doc >= 1.0 installed to build documentation"
  #   depsBuildBuild = (upstream.depsBuildBuild or []) ++ [
  #     pkg-config  #< to find gtk-doc
  #     (buildPackages.python3.withPackages (ps: with ps; [ lxml ])) # Tests
  #   ];
  #   # nativeBuildInputs = [
  #   #   # (python3.withPackages (ps: with ps; [ lxml ])) # Tests
  #   #   autoreconfHook
  #   #   dbus
  #   #   docbook_xsl
  #   #   gnome.gnome-common
  #   #   gobject-introspection
  #   #   gtk-doc
  #   #   pkg-config
  #   #   vala
  #   #   which
  #   #   wrapGAppsHook3
  #   #   xorg.xorgserver
  #   # ] ++ [
  #   # nativeBuildInputs = lib.tail upstream.nativeBuildInputs ++ [
  #   nativeBuildInputs = (
  #     lib.filter (p:
  #       !lib.hasPrefix python3.pname (p.name or p.pname or "") &&
  #       # ... i can't figure out where it's getting libX11 from :|
  #       (p.pname or "") != xorg.xorgserver.pname &&
  #       (p.pname or "") != gnome.gnome-common.pname
  #     )
  #     upstream.nativeBuildInputs
  #   ) ++ [
  #     buildPackages.gettext  #< for msgfmt
  #   ];

  #   buildInputs = upstream.buildInputs ++ [
  #     xorg.xorgserver  #< upstream incorrectly places this in `nativeBuildInputs`
  #   ];

  #   # nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #   #   (python3.pythonOnBuildForHost.withPackages (ps: with ps; [ lxml ])) # Tests
  #   # ];
  #   configureFlags = [
  #     "--enable-gtk-doc"
  #     # "--enable-headless-tests"  #< can't test when cross compiling
  #   ];
  # });

  # binutils = prev.binutils.override {
  #   # fix that resulting binary files would specify build #!sh as their interpreter.
  #   # dtrx is the primary beneficiary of this.
  #   # this doesn't actually cause mass rebuilding.
  #   # note that this isn't enough to remove all build references:
  #   # - expand-response-params still references build stuff.
  #   shell = runtimeShell;
  # };

  # 2024/08/12: upstreaming is blocked on libgweather, via evolution-data-server
  # fixes: "Exec format error: './calls-scan'"
  calls = prev.calls.overrideAttrs (upstream: {
    # TODO: try building with mesonEmulatorHook when i upstream this
    # nativeBuildInputs = upstream.nativeBuildInputs ++ lib.optionals (!prev.stdenv.buildPlatform.canExecute prev.stdenv.hostPlatform) [
    #   mesonEmulatorHook
    # ];
    outputs = lib.remove "devdoc" upstream.outputs;
    mesonFlags = lib.remove "-Dgtk_doc=true" upstream.mesonFlags;
  });

  # 2024/08/12: upstreaming is unblocked
  delfin = prev.delfin.overrideAttrs (upstream: {
    nativeBuildInputs = upstream.nativeBuildInputs ++ [
      # fixes: loaders/meson.build:72:7: ERROR: Program 'msgfmt' not found or not executable
      buildPackages.gettext
    ];
    postPatch = ''
      substituteInPlace delfin/meson.build \
        --replace-fail "cargo, 'build'," "'${lib.getExe crossCargo}', 'build'," \
        --replace-fail "'delfin' / rust_target" "'delfin' / '${rust.envVars.rustHostPlatformSpec}' / rust_target"
    '';
  });

  # 2024/08/12: upstreaming is unblocked
  dialect = prev.dialect.overrideAttrs (upstream: {
    # blueprint-compiler runs on the build machine, but tries to load gobject-introspection types meant for the host.
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace data/resources/meson.build --replace-fail \
        "find_program('blueprint-compiler')" \
        "'env', 'GI_TYPELIB_PATH=${typelibPath [
          buildPackages.gdk-pixbuf
          buildPackages.glib
          buildPackages.graphene
          buildPackages.gtk4
          buildPackages.harfbuzz
          buildPackages.libadwaita
          buildPackages.pango
        ]}', find_program('blueprint-compiler')"
    '';
    # error: "<dialect> is not allowed to refer to the following paths: <build python>"
    # dialect's meson build script sets host binaries to use build PYTHON
    # disallowedReferences = [];
    postFixup = (upstream.postFixup or "") + ''
      patchShebangs --update --host $out/share/dialect/search_provider
    '';
    # upstream sets strictDeps=false which makes gAppsWrapperHook wrap with the build dependencies
    strictDeps = true;
  });

  # 2024/05/31: upstreaming is blocked on rpm
  # dtrx = prev.dtrx.override {
  #   # `binutils` is the nix wrapper, which reads nix-related env vars
  #   # before passing on to e.g. `ld`.
  #   # dtrx probably only needs `ar` at runtime, not even `ld`.
  #   binutils = binutils-unwrapped;
  # };

  # 2024/08/12: upstreaming is unblocked
  # emacs = prev.emacs.override {
  #   nativeComp = false;  # will be renamed to `withNativeCompilation` in future
  #   # future: we can specify 'action-if-cross-compiling' to actually invoke the test programs:
  #   # <https://www.gnu.org/software/autoconf/manual/autoconf-2.63/html_node/Runtime.html>
  # };

  evolution-data-server = prev.evolution-data-server.overrideAttrs (upstream: {
    # 2024/05/31: upstreaming is blocked by appstream (out for PR), libgweather (out for PR)
    cmakeFlags = upstream.cmakeFlags ++ [
      "-DCMAKE_CROSSCOMPILING_EMULATOR=${stdenv.hostPlatform.emulator buildPackages}"
      "-DENABLE_TESTS=no"
      "-DGETTEXT_MSGFMT_EXECUTABLE=${lib.getBin buildPackages.gettext}/bin/msgfmt"
      "-DGETTEXT_MSGMERGE_EXECUTABLE=${lib.getBin buildPackages.gettext}/bin/msgmerge"
      "-DGETTEXT_XGETTEXT_EXECUTABLE=${lib.getBin buildPackages.gettext}/bin/xgettext"
      "-DGLIB_COMPILE_RESOURCES=${lib.getDev buildPackages.glib}/bin/glib-compile-resources"
      "-DGLIB_COMPILE_SCHEMAS=${lib.getDev buildPackages.glib}/bin/glib-compile-schemas"
    ];
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/addressbook/libebook-contacts/CMakeLists.txt --replace-fail \
        'COMMAND ''${CMAKE_CURRENT_BINARY_DIR}/gen-western-table' \
        'COMMAND ${stdenv.hostPlatform.emulator buildPackages} ''${CMAKE_CURRENT_BINARY_DIR}/gen-western-table' 
      substituteInPlace src/camel/CMakeLists.txt --replace-fail \
        'COMMAND ''${CMAKE_CURRENT_BINARY_DIR}/camel-gen-tables' \
        'COMMAND ${stdenv.hostPlatform.emulator buildPackages} ''${CMAKE_CURRENT_BINARY_DIR}/camel-gen-tables'
    '';
    # N.B.: the deps are funky even without cross compiling.
    # upstream probably wants to replace pcre with pcre2, and maybe provide perl
    # nativeBuildInputs = upstream.nativeBuildInputs ++ [
    #   perl  # fixes "The 'perl' not found, not installing csv2vcard"
    #   # glib
    #   # libiconv
    #   # iconv
    # ];
    # buildInputs = upstream.buildInputs ++ [
    #   pcre2  # fixes: "Package 'libpcre2-8', required by 'glib-2.0', not found"
    #   mount  # fails to fix: "Package 'mount', required by 'gio-2.0', not found"
    # ];
  });

  # 2024/08/12: upstreaming is blocked on gnome-user-share (apache-httpd)
  # fixes: "src/meson.build:106:0: ERROR: Program 'glib-compile-resources' not found or not executable"
  # file-roller = mvToNativeInputs [ glib ] prev.file-roller;

  # 2024/08/12: upstreaming is unblocked
  # firejail = prev.firejail.overrideAttrs (upstream: {
  #   # firejail executes its build outputs to produce the default filter list.
  #   # i think we *could* copy the default filters from pkgsBuildBuild, but that doesn't seem future proof
  #   # for any (future) arch-specific filtering
  #   postPatch = (upstream.postPatch or "") + (let
  #     emulator = stdenv.hostPlatform.emulator buildPackages;
  #   in lib.optionalString (!prev.stdenv.buildPlatform.canExecute prev.stdenv.hostPlatform) ''
  #     substituteInPlace Makefile \
  #       --replace-fail '	src/fseccomp/fseccomp' '	${emulator} src/fseccomp/fseccomp' \
  #       --replace-fail '	src/fsec-optimize/fsec-optimize' '	${emulator} src/fsec-optimize/fsec-optimize'
  #   '');
  # });

  # 2024/08/12: upstreaming is unblocked
  # flare-signal = prev.flare-signal.overrideAttrs (upstream: {
  #   # blueprint-compiler runs on the build machine, but tries to load gobject-introspection types meant for the host.
  #   postPatch = (upstream.postPatch or "") + ''
  #     substituteInPlace data/resources/meson.build --replace-fail \
  #       "find_program('blueprint-compiler')" \
  #       "'env', 'GI_TYPELIB_PATH=${typelibPath [
  #         buildPackages.gdk-pixbuf
  #         buildPackages.harfbuzz
  #         buildPackages.gtk4
  #         buildPackages.libadwaita
  #         buildPackages.pango
  #         buildPackages.graphene
  #       ]}', find_program('blueprint-compiler')"
  #   '';
  #    env = let
  #      inherit buildPackages stdenv rust;
  #      ccForBuild = "${buildPackages.stdenv.cc}/bin/${buildPackages.stdenv.cc.targetPrefix}cc";
  #      cxxForBuild = "${buildPackages.stdenv.cc}/bin/${buildPackages.stdenv.cc.targetPrefix}c++";
  #      ccForHost = "${stdenv.cc}/bin/${stdenv.cc.targetPrefix}cc";
  #      cxxForHost = "${stdenv.cc}/bin/${stdenv.cc.targetPrefix}c++";
  #      rustBuildPlatform = rust.toRustTarget stdenv.buildPlatform;
  #      rustTargetPlatform = rust.toRustTarget stdenv.hostPlatform;
  #      rustTargetPlatformSpec = rust.toRustTargetSpec stdenv.hostPlatform;
  #    in {
  #      # taken from <pkgs/build-support/rust/hooks/default.nix>
  #      # fixes "cargo:warning=aarch64-unknown-linux-gnu-gcc: error: unrecognized command-line option ‘-m64’"
  #      # XXX: these aren't necessarily valid environment variables: the referenced nix file is more clever to get them to work.
  #      "CC_${rustBuildPlatform}" = "${ccForBuild}";
  #      "CXX_${rustBuildPlatform}" = "${cxxForBuild}";
  #      "CC_${rustTargetPlatform}" = "${ccForHost}";
  #      "CXX_${rustTargetPlatform}" = "${cxxForHost}";
  #    };
  # });

  flare-signal-nixified = prev.flare-signal-nixified.overrideAttrs (upstream: {
    # blueprint-compiler runs on the build machine, but tries to load gobject-introspection types meant for the host.
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace data/resources/meson.build --replace-fail \
        "find_program('blueprint-compiler', version: '>= 0.12.0')" \
        "'env', 'GI_TYPELIB_PATH=${typelibPath [
          buildPackages.gdk-pixbuf
          buildPackages.glib
          buildPackages.graphene
          buildPackages.gtk4
          buildPackages.harfbuzz
          buildPackages.libadwaita
          buildPackages.pango
        ]}', find_program('blueprint-compiler')"
    '';
  });

  # 2024/08/12: upstreaming is unblocked, implemented on `pr-flatpak-cross`, out for PR: <https://github.com/NixOS/nixpkgs/pull/334324>
  # flatpak = prev.flatpak.overrideAttrs (upstream: {
  #   # fixes "No package 'libxml-2.0' found"
  #   buildInputs = upstream.buildInputs ++ [ libxml2 ];
  #   configureFlags = upstream.configureFlags ++ [
  #     "--enable-selinux-module=no"  # fixes "checking for /usr/share/selinux/devel/Makefile... configure: error: cannot check for file existence when cross compiling"
  #     "--disable-gtk-doc"  # fixes "You must have gtk-doc >= 1.20 installed to build documentation for Flatpak"
  #   ];

  #   postPatch = let
  #     # copied from nixpkgs flatpak and modified to use buildPackages python
  #     vsc-py = buildPackages.python3.withPackages (pp: [
  #       pp.pyparsing
  #     ]);
  #   in ''
  #     patchShebangs buildutil
  #     patchShebangs tests
  #     PATH=${lib.makeBinPath [vsc-py]}:$PATH patchShebangs --build subprojects/variant-schema-compiler/variant-schema-compiler
  #   '' + ''
  #     sed -i s:'\$BWRAP --version:${stdenv.hostPlatform.emulator buildPackages} \$BWRAP --version:' configure.ac
  #     sed -i s:'\$DBUS_PROXY --version:${stdenv.hostPlatform.emulator buildPackages} \$DBUS_PROXY --version:' configure.ac
  #   '';
  # });

  # 2024/08/12: upstreaming is blocked by xdg-desktop-portal
  fractal = prev.fractal.overrideAttrs (upstream: {
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/meson.build \
        --replace-fail "cargo, 'build'," "'${lib.getExe crossCargo}', 'build'," \
        --replace-fail "'src' / rust_target" "'src' / '${rust.envVars.rustHostPlatformSpec}' / rust_target"
    '';
  });

  # solves (meson) "Run-time dependency libgcab-1.0 found: NO (tried pkgconfig and cmake)", and others.
  # 2024/08/12: upstreaming is unblocked
  # fwupd = (addBuildInputs
  #   [ gcab ]
  #   (mvToBuildInputs [ gnutls ] prev.fwupd)
  # ).overrideAttrs (upstream: {
  #   # XXX: gcab is apparently needed as both build and native input
  #   # can't build docs w/o adding `gi-docgen` to ldpath, but that adds a new glibc to the ldpath
  #   # which causes host binaries to be linked against the build libc & fail
  #   mesonFlags = (lib.remove "-Ddocs=enabled" upstream.mesonFlags) ++ [ "-Ddocs=disabled" ];
  #   outputs = lib.remove "devdoc" upstream.outputs;
  # });

  # 2024/08/12: upstreaming is blocked by libgweather (out for review) via evolution-data-server
  geary = prev.geary.overrideAttrs (upstream: {
    buildInputs = upstream.buildInputs ++ [
      # glib
      appstream-glib
      libxml2
    ];
  });

  # 2024/05/31: upstreaming is unblocked
  glycin-loaders = prev.glycin-loaders.overrideAttrs (upstream: {
    nativeBuildInputs = upstream.nativeBuildInputs ++ [
      # fixes: loaders/meson.build:72:7: ERROR: Program 'msgfmt' not found or not executable
      buildPackages.gettext
    ];
    postPatch = ''
      substituteInPlace loaders/meson.build \
        --replace-fail "cargo_bin, 'build'," "'${lib.getExe crossCargo}', 'build'," \
        --replace-fail "'loaders' / rust_target" "'loaders' / '${rust.envVars.rustHostPlatformSpec}' / rust_target"
    '';
  });


  # gnustep = prev.gnustep.overrideScope (self: super: {
  #   # gnustep is going to need a *lot* of work/domain-specific knowledge to truly cross-compile,
  #   base = super.base.overrideAttrs (upstream: {
  #     # fixes: "checking FFI library usage... ./configure: line 11028: pkg-config: command not found"
  #     # nixpkgs has this in nativeBuildInputs... but that's failing when we partially emulate things.
  #     buildInputs = (upstream.buildInputs or []) ++ [ prev.pkg-config ];
  #   });
  # });

  # 2024/05/31: upstreaming is blocked on appstream, qtx11extras (via zbar)
  gnome-frog = prev.gnome-frog.overrideAttrs (upstream: {
    # blueprint-compiler runs on the build machine, but tries to load gobject-introspection types meant for the host.
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace data/meson.build --replace-fail \
        "find_program('blueprint-compiler')" \
        "'env', 'GI_TYPELIB_PATH=${typelibPath [
          buildPackages.gdk-pixbuf
          buildPackages.glib
          buildPackages.graphene
          buildPackages.gtk4
          buildPackages.harfbuzz
          buildPackages.libadwaita
          buildPackages.pango
        ]}', find_program('blueprint-compiler')"
    '';
  });

  # 2024/08/12: upstreaming is blocked on gnome-user-share (apache-httpd)
  # gnome-terminal = prev.gnome-terminal.overrideAttrs (orig: {
  #   # fixes "meson.build:343:0: ERROR: Dependency "libpcre2-8" not found, tried pkgconfig"
  #   buildInputs = orig.buildInputs ++ [ pcre2 ];
  # });

  # 2024/05/08: fix: "meson.build:85:11: ERROR: Dependency "dbus-1" not found, tried pkgconfig".
  # 2024/08/12: upstreaming is unblocked
  gnome-online-accounts = mvToBuildInputs [ dbus ] prev.gnome-online-accounts;

  # 2024/08/12: upstreaming is blocked on apache-httpd (via mod_dnssd)
  # fixes: meson.build:111:6: ERROR: Program 'glib-compile-schemas' not found or not executable
  # gnome-user-share = addNativeInputs [ glib ] prev.gnome-user-share;

  gnome = prev.gnome.overrideScope (self: super: {
    # 2024/05/31: upstreaming is blocked by a LOT: qtbase, qtsvg, webp-pixbuf-loader, libgweather, gnome-color-manager, appstream, apache-httpd, ibus
    # fixes "subprojects/gvc/meson.build:30:0: ERROR: Program 'glib-mkenums mkenums' not found or not executable"
    # gnome-control-center = mvToNativeInputs [ glib ] super.gnome-control-center;

    gnome-maps = super.gnome-maps.overrideAttrs (upstream: {
      # 2024/08/12: upstreaming is blocked by libgweather (direct dependency)
      postPatch = (upstream.postPatch or "") + ''
        # fixes: "ERROR: Program 'gjs' not found or not executable"
        substituteInPlace meson.build \
          --replace-fail "find_program('gjs')" "find_program('${gjs}/bin/gjs')"
      '';
    });
    # 2024/08/12: upstreaming is blocked on ibus, libgweather
    # gnome-shell = super.gnome-shell.overrideAttrs (orig: {
    #   # fixes "meson.build:128:0: ERROR: Program 'gjs' not found or not executable"
    #   # does not fix "_giscanner.cpython-310-x86_64-linux-gnu.so: cannot open shared object file: No such file or directory"  (python import failure)
    #   nativeBuildInputs = orig.nativeBuildInputs ++ [ gjs gobject-introspection ];
    #   # try to reduce gobject-introspection/shew dependencies
    #   mesonFlags = [
    #     "-Dextensions_app=false"
    #     "-Dextensions_tool=false"
    #     "-Dman=false"
    #   ];
    #   # fixes "gvc| Build-time dependency gobject-introspection-1.0 found: NO"
    #   # inspired by gupnp_1_6
    #   # outputs = [ "out" "dev" ]
    #   #   ++ lib.optionals (prev.stdenv.buildPlatform == prev.stdenv.hostPlatform) [ "devdoc" ];
    #   # mesonFlags = [
    #   #   "-Dgtk_doc=${lib.boolToString (prev.stdenv.buildPlatform == prev.stdenv.hostPlatform)}"
    #   # ];
    # });
    # gnome-shell = super.gnome-shell.overrideAttrs (upstream: {
    #   nativeBuildInputs = upstream.nativeBuildInputs ++ [
    #     gjs  # fixes "meson.build:128:0: ERROR: Program 'gjs' not found or not executable"
    #   ];
    # });
    gnome-settings-daemon = super.gnome-settings-daemon.overrideAttrs (orig: {
      # 2024/08/11: upstreaming is blocked on libgweather
      #   gsd is required by xdg-desktop-portal-gtk
      # pkg-config solves: "plugins/power/meson.build:22:0: ERROR: Dependency lookup for glib-2.0 with method 'pkgconfig' failed: Pkg-config binary for machine build machine not found."
      # stdenv.cc fixes: "plugins/power/meson.build:60:0: ERROR: No build machine compiler for 'plugins/power/gsd-power-enums-update.c'"
      # but then it fails with a link-time error.
      # depsBuildBuild = orig.depsBuildBuild or [] ++ [ glib pkg-config buildPackages.stdenv.cc ];
      # hack to just not build the power plugin (panel?), to avoid cross compilation errors
      postPatch = orig.postPatch + ''
        substituteInPlace plugins/meson.build \
          --replace-fail "disabled_plugins = []" "disabled_plugins = ['power']"
      '';
    });
    # gnome-settings-daemon43 = super.gnome-settings-daemon43.overrideAttrs (orig: {
    #   postPatch = orig.postPatch + ''
    #     substituteInPlace plugins/meson.build \
    #       --replace-fail "disabled_plugins = []" "disabled_plugins = ['power']"
    #   '';
    # });

    # 2024/08/12: upstreaming is blocked on gnome-shell (ibus, libgweather)
    # fixes: "gdbus-codegen not found or executable"
    # gnome-session = mvToNativeInputs [ glib ] super.gnome-session;

    # mutter = super.mutter.overrideAttrs (orig: {
    #   # 2024/08/12: upstreaming is blocked on libgweather (via gnome-settings-daemon)
    #   # N.B.: not all of this suitable to upstreaming, as-is.
    #   # mesa and xorgserver are removed here because they *themselves* don't build for `buildPackages` (temporarily: 2023/10/26)
    #   nativeBuildInputs = lib.subtractLists [ mesa xorg.xorgserver ] orig.nativeBuildInputs;
    #   buildInputs = orig.buildInputs ++ [
    #     mesa  # fixes "meson.build:237:2: ERROR: Dependency "gbm" not found, tried pkgconfig"
    #     libGL  # fixes "meson.build:184:11: ERROR: Dependency "gl" not found, tried pkgconfig and system"
    #   ];
    #   # Run-time dependency gi-docgen found: NO (tried pkgconfig and cmake)
    #   mesonFlags = lib.remove "-Ddocs=true" orig.mesonFlags;
    #   outputs = lib.remove "devdoc" orig.outputs;
    #   postInstall = lib.replaceStrings [ "${glib.dev}" ] [ "${buildPackages.glib.dev}" ] orig.postInstall;
    # });
  });

  # gnome2 = prev.gnome2.overrideScope (self: super: {
  #   # 2024/05/31: upstreaming is blocked on gconf (ORBit2)
  #   # gnome_vfs = (
  #   #   # fixes: "configure: error: gconftool-2 executable not found in your path - should be installed with GConf"
  #   #   # new error: "configure: error: cannot run test program while cross compiling"
  #   #   mvToNativeInputs [ self.GConf ] super.gnome_vfs
  #   # );
  # });

  # out for PR: <https://github.com/NixOS/nixpkgs/pull/263182>
  # hspell = prev.hspell.overrideAttrs (upstream: {
  #   # build perl is needed by the Makefile,
  #   # but $out/bin/multispell (which is simply copied from src) should use host perl
  #   buildInputs = (upstream.buildInputs or []) ++ [ perl ];
  #   postInstall = ''
  #     patchShebangs --update $out/bin/multispell
  #   '';
  # });

  # 2024/08/12: upstreaming is unblocked
  # hyprland = mvToNativeInputs [ hwdata ] prev.hyprland;
  # hyprland = prev.hyprland.overrideAttrs (_: {
  #   depsBuildBuild = [ pkg-config ];
  # });

  # 2024/05/31: upstreaming is blocked on gconf
  # "setup: line 1595: ant: command not found"
  # i2p = mvToNativeInputs [ ant gettext ] prev.i2p;

  # 2024/08/12: upstreaming is unblocked (see `pkgs/patched/ibus`)
  # ibus = prev.ibus.overrideAttrs (upstream: {
  #   nativeBuildInputs = upstream.nativeBuildInputs or [] ++ [
  #     glib  # fixes: ImportError: /nix/store/fi1rsalr11xg00dqwgzbf91jpl3zwygi-gobject-introspection-aarch64-unknown-linux-gnu-1.74.0/lib/gobject-introspection/giscanner/_giscanner.cpython-310-x86_64-linux-gnu.so: cannot open shared object file: No such file or directory
  #     buildPackages.gobject-introspection  # fixes "_giscanner.cpython-310-x86_64-linux-gnu.so: cannot open shared object file: No such file or directory"
  #   ];
  #   buildInputs = lib.remove gobject-introspection upstream.buildInputs ++ [
  #     vala  # fixes: "Package `ibus-1.0' not found in specified Vala API directories or GObject-Introspection GIR directories"
  #   ];
  # });

  # 2024/08/12: upstreaming is blocked on lua, lpeg, pandoc, unicode-collation, etc
  iotas = prev.iotas.overrideAttrs (_: {
    # error: "<iotas> is not allowed to refer to the following paths: <build python>"
    # disallowedReferences = [];
    postPatch = ''
      # @PYTHON@ becomes the build python, but this file isn't executable anyway so shouldn't have a shebang
      substituteInPlace iotas/const.py.in \
        --replace-fail '#!@PYTHON@' ""
    '';
  });

  # jellyfin-media-player = mvToBuildInputs
  #   [ libsForQt5.wrapQtAppsHook ]  # this shouldn't be: but otherwise we get mixed qtbase deps
  #   (prev.jellyfin-media-player.overrideAttrs (upstream: {
  #     meta = upstream.meta // {
  #       platforms = upstream.meta.platforms ++ [
  #         "aarch64-linux"
  #       ];
  #     };
  #   }));
  # jellyfin-media-player-qt6 = prev.jellyfin-media-player-qt6.overrideAttrs (upstream: {
  #   # nativeBuildInputs => result targets x86.
  #   # buildInputs => result targets correct platform, but doesn't wrap the runtime deps
  #   # TODO: fix the hook in qt6 itself?
  #   depsHostHost = upstream.depsHostHost or [] ++ [ qt6.wrapQtAppsHook ];
  #   nativeBuildInputs = lib.remove [ qt6.wrapQtAppsHook ] upstream.nativeBuildInputs;
  # });

  # 2024/08/12: upstreaming is unblocked
  komikku = prev.komikku.overrideAttrs (upstream: {
    # blueprint-compiler runs on the build machine, but tries to load gobject-introspection types meant for the host.
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace data/meson.build --replace-fail \
        "find_program('blueprint-compiler')" \
        "'env', 'GI_TYPELIB_PATH=${typelibPath [
          buildPackages.gdk-pixbuf
          buildPackages.glib
          buildPackages.graphene
          buildPackages.gtk4
          buildPackages.harfbuzz
          buildPackages.libadwaita
          buildPackages.pango
        ]}', find_program('blueprint-compiler')"
    '';
  });

  # 2024/08/12: upstreaming is unblocked -- but is this necessary?
  # koreader = prev.koreader.overrideAttrs (upstream: {
  #   nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #     autoPatchelfHook
  #   ];
  # });

  lemoa = (prev.lemoa.override { cargo = crossCargo; }).overrideAttrs (upstream:
    let
      rustTargetPlatform = rust.toRustTarget stdenv.hostPlatform;
    in {
      preBuild = ''
        mkdir -p target/release
        ln -s ../${rustTargetPlatform}/release/lemoa target/release/lemoa
      '';
    }
  );

  # libgweather = prev.libgweather.overrideAttrs (upstream: {
  #   nativeBuildInputs = (lib.remove gobject-introspection upstream.nativeBuildInputs) ++ [
  #     buildPackages.gobject-introspection  # fails to fix "gi._error.GError: g-invoke-error-quark: Could not locate g_option_error_quark: /nix/store/dsx6kqmyg7f3dz9hwhz7m3jrac4vn3pc-glib-aarch64-unknown-linux-gnu-2.74.3/lib/libglib-2.0.so.0"
  #   ];
  #   # fixes "Run-time dependency vapigen found: NO (tried pkgconfig)"
  #   buildInputs = upstream.buildInputs ++ [ vala ];
  # });

  # 2023/08/27: out for PR: <https://github.com/NixOS/nixpkgs/pull/251956>
  # libgweather = (prev.libgweather.override {
  #   # we need introspection for bindings, used by e.g.
  #   # - gnome.gnome-weather (javascript)
  #   # - sane-weather (python)
  #   #
  #   # enabling introspection on cross is tricky because `gen_locations_variant.py`
  #   # outputs binary files (Locations.bin) which use the endianness of the build machine
  #   # OTOH, aarch64 and x86_64 have same endianness: why not just ignore the issue, then?
  #   # upstream issue (loosely related): <https://gitlab.gnome.org/GNOME/libgweather/-/issues/154>
  #   withIntrospection = true;
  # }).overrideAttrs (upstream: {
  #   # TODO: the `is_cross_build` change to meson.build is in nixpkgs, but specifies the wrong filepath
  #   #   (libgweather/meson.build instead of meson.build)
  #   postPatch = (upstream.postPatch or "") + ''
  #     sed -i '2i import os; os.environ["GI_TYPELIB_PATH"] = ""' build-aux/meson/gen_locations_variant.py
  #     substituteInPlace meson.build \
  #       --replace "g_ir_scanner.found() and not meson.is_cross_build()" "g_ir_scanner.found()"
  #     substituteInPlace libgweather/meson.build \
  #       --replace "dependency('vapigen'," "dependency('vapigen', native:true,"
  #   '';
  # });

  # 2024/08/12: upstreaming is unblocked
  libpeas2 = prev.libpeas2.overrideAttrs (upstream: {
    mesonFlags = upstream.mesonFlags ++ [
      "-Dlua51=false"  #< fails to find lua (probably it incorrectly checks the build machine)
    ];
  });

  # libsForQt5 = prev.libsForQt5.overrideScope (self: super: {
  #   phonon = super.phonon.overrideAttrs (orig: {
  #     # fixes "ECM (required version >= 5.60), Extra CMake Modules"
  #     buildInputs = orig.buildInputs ++ [ extra-cmake-modules ];
  #   });
  # });
  # libsForQt5 = prev.libsForQt5.overrideScope (self: super: {
  #   # emulate all the qt5 packages, but rework `libsForQt5.callPackage` and `mkDerivation`
  #   # to use non-emulated stdenv by default.
  #   mkDerivation = self.mkDerivationWith stdenv.mkDerivation;
  #   callPackage = self.newScope { inherit (self) qtCompatVersion qtModule srcs; inherit stdenv; };
  # });

  # 2024/08/12: upstreaming blocked on libgweather
  loupe = prev.loupe.overrideAttrs (upstream: {
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/meson.build \
        --replace-fail "cargo, 'build'," "'${lib.getExe crossCargo}', 'build'," \
        --replace-fail "'src' / rust_target" "'src' / '${rust.envVars.rustHostPlatformSpec}' / rust_target"
    '';
  });

  # 2024/08/12: upstreaming is unblocked
  mepo = (prev.mepo.override {
    # nixpkgs mepo correctly puts `zig_0_12.hook` in nativeBuildInputs,
    # but for some reason that tries to use the host zig instead of the build zig.
    zig_0_12 = buildPackages.zig_0_12;
  }).overrideAttrs (upstream: {
    dontUseZigCheck = true;
    nativeBuildInputs = upstream.nativeBuildInputs ++ [
      # zig hardcodes the /lib/ld-linux.so interpreter which breaks nix dynamic linking & dep tracking.
      # this shouldn't have to be buildPackages.autoPatchelfHook...
      # but without specifying `buildPackages` the host coreutils ends up on the builder's path and breaks things
      buildPackages.autoPatchelfHook
      # zig hard-codes `pkg-config` inside lib/std/build.zig
      (buildPackages.writeShellScriptBin "pkg-config" ''
        exec $PKG_CONFIG $@
      '')
    ];
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/sdlshim.zig \
        --replace-fail 'cInclude("SDL2/SDL2_gfxPrimitives.h")' 'cInclude("SDL2_gfxPrimitives.h")' \
        --replace-fail 'cInclude("SDL2/SDL_image.h")' 'cInclude("SDL_image.h")' \
        --replace-fail 'cInclude("SDL2/SDL_ttf.h")' 'cInclude("SDL_ttf.h")'
      substituteInPlace build.zig \
        --replace-fail 'step.linkSystemLibrary("curl")' 'step.linkSystemLibrary("libcurl")'
    '';
    # skip the mepo -docman self-documenting invocation
    postInstall = ''
      install -d $out/share/man/man1
    '';
    # optional `zig build` debugging flags:
    # - --verbose
    # - --verbose-cimport
    # - --help
    zigBuildFlags = [ "-Dtarget=aarch64-linux-gnu" ];
  });

  # nautilus = (
  #   # 2024/08/12: upstreaming is blocked on apache-httpd (via gnome-user-share)
  #   addInputs {
  #     # fixes: "meson.build:123:0: ERROR: Dependency "libxml-2.0" not found, tried pkgconfig"
  #     buildInputs = [ libxml2 ];
  #     # fixes: "meson.build:226:6: ERROR: Program 'gtk-update-icon-cache' not found or not executable"
  #     nativeBuildInputs = [ gtk4 ];
  #   }
  # );

  # fixes: "ar: command not found"
  # `ar` is provided by bintools
  # 2024/05/31: upstreaming is unblocked by deps; but turns out to not be this simple
  # ncftp = addNativeInputs [ bintools ] prev.ncftp;

  # fixes "gdbus-codegen: command not found"
  # 2023/07/31: upstreaming is blocked on p11-kit, openfortivpn, qttranslations (qtbase) cross compilation
  # networkmanager-fortisslvpn = mvToNativeInputs [ glib ] prev.networkmanager-fortisslvpn;
  # networkmanager-iodine = prev.networkmanager-iodine.overrideAttrs (orig: {
  #   # fails to fix "configure.ac:58: error: possibly undefined macro: AM_GLIB_GNU_GETTEXT"
  #   nativeBuildInputs = orig.nativeBuildInputs ++ [ gettext ];
  # });
  # networkmanager-iodine = addNativeInputs [ gettext ] prev.networkmanager-iodine;
  # networkmanager-iodine = prev.networkmanager-iodine.overrideAttrs (upstream: {
  #   # buildInputs = upstream.buildInputs ++ [ intltool gettext ];
  #   # nativeBuildInputs = lib.remove intltool upstream.nativeBuildInputs;
  #   # nativeBuildInputs = upstream.nativeBuildInputs ++ [ gettext ];
  #   postPatch = upstream.postPatch or "" + ''
  #     sed -i s/AM_GLIB_GNU_GETTEXT/AM_GNU_GETTEXT/ configure.ac
  #   '';
  # });

  # fixes "gdbus-codegen: command not found"
  # fixes "gtk4-builder-tool: command not found"
  # 2024/05/31: upstreaming is blocked on qtsvg
  # networkmanager-l2tp = addNativeInputs [ gtk4 ]
  #   (mvToNativeInputs [ glib ] prev.networkmanager-l2tp);
  # fixes "properties/gresource.xml: Permission denied"
  #   - by providing glib-compile-resources
  # 2023/07/31: upstreaming is blocked on libavif cross compilation
  # networkmanager-openconnect = mvToNativeInputs [ glib ] prev.networkmanager-openconnect;
  # fixes "properties/gresource.xml: Permission denied"
  #   - by providing glib-compile-resources
  # 2023/07/31: upstreaming is unblocked,implemented
  # networkmanager-openvpn = mvToNativeInputs [ glib ] prev.networkmanager-openvpn;
  # 2023/07/31: upstreaming is unblocked,implemented
  # networkmanager-sstp = (
  #   # fixes "gdbus-codegen: command not found"
  #   mvToNativeInputs [ glib ] (
  #     # fixes gtk4-builder-tool wrong format
  #     addNativeInputs [ gtk4.dev ] prev.networkmanager-sstp
  #   )
  # );
  # 2023/07/31: upstreaming is blocked on vpnc cross compilation
  # networkmanager-vpnc = mvToNativeInputs [ glib ] prev.networkmanager-vpnc;

  # 2024/08/12: upstreaming is unblocked
  newsflash = (prev.newsflash.override {
    blueprint-compiler = buildPackages.writeShellScriptBin "blueprint-compiler" ''
      export GI_TYPELIB_PATH=${typelibPath [
        buildPackages.clapper
        buildPackages.glib
        buildPackages.gtk4
        buildPackages.gst_all_1.gstreamer
        buildPackages.gst_all_1.gst-plugins-base
        buildPackages.gdk-pixbuf
        buildPackages.pango
        buildPackages.graphene
        buildPackages.harfbuzz
        buildPackages.libadwaita
      ]}
      exec ${lib.getExe buildPackages.blueprint-compiler} "$@"
    '';
    cargo = crossCargo;  #< fixes openssl not being able to find its library
  }).overrideAttrs (upstream: {
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/meson.build --replace-fail \
        "'src' / rust_target" \
        "'src' / '${rust.toRustTarget stdenv.hostPlatform}' / rust_target"

      rm build.rs

      export OUT_DIR=$(pwd)

      # from build.rs:
      glib-compile-resources --sourcedir=data/resources --target=icons.gresource data/resources/icons.gresource.xml
      glib-compile-resources --sourcedir=data/resources --target=styles.gresource data/resources/styles.gresource.xml
      substitute data/io.gitlab.news_flash.NewsFlash.appdata.xml.in.in \
        data/resources/io.gitlab.news_flash.NewsFlash.appdata.xml \
        --replace-fail '@appid@' 'io.gitlab.news_flash.NewsFlash'
      glib-compile-resources --sourcedir=data/resources --target=appdata.gresource data/resources/appdata.gresource.xml
    '';

    env = let
      inherit buildPackages stdenv rust;
      ccForBuild = "${buildPackages.stdenv.cc}/bin/${buildPackages.stdenv.cc.targetPrefix}cc";
      cxxForBuild = "${buildPackages.stdenv.cc}/bin/${buildPackages.stdenv.cc.targetPrefix}c++";
      ccForHost = "${stdenv.cc}/bin/${stdenv.cc.targetPrefix}cc";
      cxxForHost = "${stdenv.cc}/bin/${stdenv.cc.targetPrefix}c++";
      rustBuildPlatform = rust.toRustTarget stdenv.buildPlatform;
      rustTargetPlatform = rust.toRustTarget stdenv.hostPlatform;
      rustTargetPlatformSpec = rust.toRustTargetSpec stdenv.hostPlatform;
    in (upstream.env or {}) // {
      # taken from <pkgs/build-support/rust/hooks/default.nix>
      # fixes "cargo:warning=aarch64-unknown-linux-gnu-gcc: error: unrecognized command-line option ‘-m64’"
      # XXX: these aren't necessarily valid environment variables: the referenced nix file is more clever to get them to work.
      "CC_${rustBuildPlatform}" = "${ccForBuild}";
      "CXX_${rustBuildPlatform}" = "${cxxForBuild}";
      "CC_${rustTargetPlatform}" = "${ccForHost}";
      "CXX_${rustTargetPlatform}" = "${cxxForHost}";
      # fails to fix "Failed to find OpenSSL development headers."
      # OPENSSL_NO_VENDOR = 1;
      # OPENSSL_LIB_DIR = "${lib.getLib openssl}/lib";
      # OPENSSL_DIR = "${lib.getDev openssl}";
    };
  });

  # fixes "properties/gresource.xml: Permission denied"
  #   - by providing glib-compile-resources
  # 2024/05/31: upstreaming is blocked on qtsvg, qtimageformats, qtx11extras
  # nheko = (prev.nheko.override {
  #   gst_all_1 = gst_all_1 // {
  #     # don't build gst-plugins-good with "qt5 support"
  #     # alternative build fix is to remove `qtbase` from nativeBuildInputs:
  #     # - that avoids the mixd qt5 deps, but forces a rebuild of gst-plugins-good and +20MB to closure
  #     gst-plugins-good.override = attrs: gst_all_1.gst-plugins-good.override (builtins.removeAttrs attrs [ "qt5Support" ]);
  #   };
  # }).overrideAttrs (orig: {
  #   # fixes "fatal error: lmdb++.h: No such file or directory
  #   buildInputs = orig.buildInputs ++ [ lmdbxx ];
  # });
  # 2024/05/31: upstreaming blocked on emacs (and maybe ruby, libgccjit?)
  # - previous upstreaming attemt: <https://github.com/NixOS/nixpkgs/pull/225111/files>
  # notmuch = prev.notmuch.overrideAttrs (upstream: {
  #   # fixes "Error: The dependencies of notmuch could not be satisfied"  (xapian, gmime, glib, talloc)
  #   # when cross-compiling, we only have a triple-prefixed pkg-config which notmuch's configure script doesn't know how to find.
  #   # so just replace these with the nix-supplied env-var which resolves to the relevant pkg-config.
  #   postPatch = upstream.postPatch or "" + ''
  #     sed -i 's/pkg-config/\$PKG_CONFIG/g' configure
  #   '';
  #   XAPIAN_CONFIG = buildPackages.writeShellScript "xapian-config" ''
  #     exec ${lib.getBin xapian}/bin/xapian-config $@
  #   '';
  #   # depsBuildBuild = [ gnupg ];
  #   nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #     gnupg  # nixpkgs specifies gpg as a buildInput instead of a nativeBuildInput
  #     perl  # used to build manpages
  #     # pythonPackages.python
  #     # shared-mime-info
  #   ];
  #   buildInputs = [
  #     xapian gmime3 talloc zlib  # dependencies described in INSTALL
  #     # perl
  #     # pythonPackages.python
  #     ruby  # notmuch links against ruby.so
  #   ];
  #   # buildInputs =
  #   #   (lib.remove
  #   #     perl
  #   #     (lib.remove
  #   #       gmime
  #   #       (lib.remove gnupg upstream.buildInputs)
  #   #     )
  #   #   ) ++ [ gmime ];
  # });
  # notmuch = prev.notmuch.overrideAttrs (upstream: {
  #   # fixes "Error: The dependencies of notmuch could not be satisfied"  (xapian, gmime, glib, talloc)
  #   # when cross-compiling, we only have a triple-prefixed pkg-config which notmuch's configure script doesn't know how to find.
  #   # so just replace these with the nix-supplied env-var which resolves to the relevant pkg-config.
  #   postPatch = upstream.postPatch or "" + ''
  #     sed -i 's/pkg-config/\$PKG_CONFIG/g' configure
  #     sed -i 's: gpg : ${buildPackages.gnupg}/bin/gpg :' configure
  #   '';
  #   XAPIAN_CONFIG = buildPackages.writeShellScript "xapian-config" ''
  #     exec ${lib.getBin xapian}/bin/xapian-config $@
  #   '';
  #   # depsBuildBuild = upstream.depsBuildBuild or [] ++ [
  #   #   buildPackages.stdenv.cc
  #   # ];
  #   nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #     # gnupg
  #     perl
  #   ];
  #   # buildInputs = lib.remove gnupg upstream.buildInputs;
  # });

  pantheon = prev.pantheon.overrideScope (self: super: {
    # 2024/08/11: upstreaming is unblocked
    switchboard-plug-network = super.switchboard-plug-network.overrideAttrs (upstream: {
      nativeBuildInputs = upstream.nativeBuildInputs ++ [
        buildPackages.gettext  # <for msgfmt
      ];
    });
    # 2024/06/13: upstreaming is unblocked; implemented on `pr-cross-switchboard-plugs-sound` branch
    switchboard-plug-sound = super.switchboard-plug-sound.overrideAttrs (upstream: {
      # depsBuildBuild = (upstream.depsBuildBuild or []) ++ [
      #   pkg-config  #< so that it can find the right gettext/msgfmt
      # ];
      # everything requires an extra `buildPackages` than if i patched this inside nixpkgs itself: not sure why!
      nativeBuildInputs = upstream.nativeBuildInputs ++ [
        buildPackages.gettext  #< for msgfmt
        # gettext  #< for msgfmt
        buildPackages.glib
      ];
      env.PKG_CONFIG_GIO_2_0_GLIB_COMPILE_RESOURCES = "${lib.getDev buildPackages.buildPackages.glib}/bin/glib-compile-resources";

      strictDeps = true;
    });
  });

  # fixes (meson) "Program 'glib-mkenums mkenums' not found or not executable"
  # 2024/08/12: upstreaming is unblocked
  # phoc = mvToNativeInputs [ wayland-scanner glib ] prev.phoc;
  # 2024/08/12: upstreaming is blocked on gnome-control-center, evolution-data-server, , ibus, libgweather, gnom-user-share, others
  # phosh = prev.phosh.overrideAttrs (upstream: {
  #   buildInputs = upstream.buildInputs ++ [
  #     libadwaita  # "plugins/meson.build:41:2: ERROR: Dependency "libadwaita-1" not found, tried pkgconfig"
  #   ];
  #   mesonFlags = upstream.mesonFlags ++ [
  #     "-Dphoc_tests=disabled"  # "tests/meson.build:20:0: ERROR: Program 'phoc' not found or not executable"
  #   ];
  #   # postPatch = upstream.postPatch or "" + ''
  #   #   sed -i 's:gio_querymodules = :gio_querymodules = "${buildPackages.glib.dev}/bin/gio-querymodules" if True else :' build-aux/post_install.py
  #   # '';
  # });
  # 2024/05/31: upstreaming is blocked on qtsvg, libgweather, webp-pixbuf-loader, appstream, gnome-color-manager, apache-httpd, ibus, freerdp (mostly gnome-shell i think)
  # phosh-mobile-settings = mvInputs {
  #   # fixes "meson.build:26:0: ERROR: Dependency "phosh-plugins" not found, tried pkgconfig"
  #   # phosh is used only for its plugins; these are specified as a runtime dep in src.
  #   # it's correct for them to be runtime dep: src/ms-lockscreen-panel.c loads stuff from
  #   buildInputs = [ phosh ];
  #   nativeBuildInputs = [
  #     gettext  # fixes "data/meson.build:1:0: ERROR: Program 'msgfmt' not found or not executable"
  #     wayland-scanner  # fixes "protocols/meson.build:7:0: ERROR: Program 'wayland-scanner' not found or not executable"
  #     glib  # fixes "src/meson.build:1:0: ERROR: Program 'glib-mkenums mkenums' not found or not executable"
  #     desktop-file-utils  # fixes "meson.build:116:8: ERROR: Program 'update-desktop-database' not found or not executable"
  #   ];
  # } prev.phosh-mobile-settings;

  # 2024/05/31: upstreaming is blocked on qtsvg, appstream
  pwvucontrol = (prev.pwvucontrol.override {
    cargo = crossCargo;
  }).overrideAttrs (upstream:
  let
    rustTargetPlatform = rust.toRustTarget stdenv.hostPlatform;
  in {
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/meson.build --replace-fail \
        "'src' / rust_target" \
        "'src' / '${rustTargetPlatform}' / rust_target"
    '';
  });

  # qt6 = prev.qt6.overrideScope (self: super: {
  #   # qtbase = super.qtbase.overrideAttrs (upstream: {
  #   #   # cmakeFlags = upstream.cmakeFlags ++ lib.optionals (stdenv.buildPlatform != stdenv.hostPlatform) [
  #   #   cmakeFlags = upstream.cmakeFlags ++ lib.optionals (stdenv.buildPlatform != stdenv.hostPlatform) [
  #   #     # "-DCMAKE_CROSSCOMPILING=True" # fails to solve QT_HOST_PATH error
  #   #     "-DQT_HOST_PATH=${buildPackages.qt6.full}"
  #   #   ];
  #   # });
  #   # qtModule = args: (super.qtModule args).overrideAttrs (upstream: {
  #   #   # the nixpkgs comment about libexec seems to be outdated:
  #   #   # it's just that cross-compiled syncqt.pl doesn't get its #!/usr/bin/env shebang replaced.
  #   #   preConfigure = lib.replaceStrings
  #   #     ["${lib.getDev self.qtbase}/libexec/syncqt.pl"]
  #   #     ["perl ${lib.getDev self.qtbase}/libexec/syncqt.pl"]
  #   #     upstream.preConfigure;
  #   # });
  #   # # qtwayland = super.qtwayland.overrideAttrs (upstream: {
  #   # #   preConfigure = "fixQtBuiltinPaths . '*.pr?'";
  #   # # });
  #   # # qtwayland = super.qtwayland.override {
  #   # #   inherit (self) qtbase;
  #   # # };

  #   qtwebengine = super.qtwebengine.overrideAttrs (upstream: {
  #     # depsBuildBuild = upstream.depsBuildBuild or [] ++ [ pkg-config ];
  #     # XXX: qt seems to use its own terminology for "host" and "target":
  #     # - <https://www.qt.io/blog/qt6-development-hosts-and-targets>
  #     # - "host" = machine invoking the compiler
  #     # - "target" = machine on which the resulting qtwebengine.so binaries will run
  #     # XXX: NIX_CFLAGS_COMPILE_<machine> is how we get the `-isystem <dir>` flags.
  #     #      probably we shouldn't blindly copy these from host machine to build machine,
  #     #      as the headers could reasonably make different assumptions.
  #     preConfigure = upstream.preConfigure + ''
  #       # export PKG_CONFIG_HOST="$PKG_CONFIG"
  #       export PKG_CONFIG_HOST="$PKG_CONFIG_FOR_BUILD"
  #       # expose -isystem <zlib> to x86 builds
  #       export NIX_CFLAGS_COMPILE_x86_64_unknown_linux_gnu="$NIX_CFLAGS_COMPILE"
  #       export NIX_LDFLAGS_x86_64_unknown_linux_gnu="-L${buildPackages.zlib}/lib"
  #     '';
  #     patches = upstream.patches or [] ++ [
  #       # ./qtwebengine-host-pkg-config.patch
  #       # alternatively, look at dlopenBuildInputs
  #       ./qtwebengine-host-cc.patch
  #     ];
  #     # patch the qt pkg-config script to show us more debug info
  #     postPatch = upstream.postPatch or "" + ''
  #       sed -i s/options.debug/True/g src/3rdparty/chromium/build/config/linux/pkg-config.py
  #     '';
  #     nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #       bintools-unwrapped  # for readelf
  #       buildPackages.cups  # for cups-config
  #       buildPackages.fontconfig
  #       buildPackages.glib
  #       buildPackages.harfbuzz
  #       buildPackages.icu
  #       buildPackages.libjpeg
  #       buildPackages.libpng
  #       buildPackages.libwebp
  #       buildPackages.nss
  #       # gcc-unwrapped.libgcc  # for libgcc_s.so
  #       buildPackages.zlib
  #     ];
  #     depsBuildBuild = upstream.depsBuildBuild or [] ++ [ pkg-config ];
  #     # buildInputs = upstream.buildInputs ++ [
  #     #   gcc-unwrapped.libgcc  # for libgcc_s.so. this gets loaded during build, suggesting i surely messed something up
  #     # ];
  #     # buildInputs = upstream.buildInputs ++ [
  #     #   gcc-unwrapped.libgcc
  #     # ];
  #     # nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #     #   icu
  #     # ];
  #     # buildInputs = upstream.buildInputs ++ [
  #     #   icu
  #     # ];
  #     # env.NIX_DEBUG="1";
  #     # env.NIX_DEBUG="7";
  #     # cmakeFlags = lib.remove "-DQT_FEATURE_webengine_system_icu=ON" upstream.cmakeFlags;
  #     cmakeFlags = upstream.cmakeFlags ++ lib.optionals (stdenv.hostPlatform != stdenv.buildPlatform) [
  #       # "--host-cc=${buildPackages.stdenv.cc}/bin/cc"
  #       # "--host-cxx=${buildPackages.stdenv.cc}/bin/c++"
  #       # these are my own vars, used by my own patch
  #       "-DCMAKE_HOST_C_COMPILER=${buildPackages.stdenv.cc}/bin/gcc"
  #       "-DCMAKE_HOST_CXX_COMPILER=${buildPackages.stdenv.cc}/bin/g++"
  #       "-DCMAKE_HOST_AR=${buildPackages.stdenv.cc}/bin/ar"
  #       "-DCMAKE_HOST_NM=${buildPackages.stdenv.cc}/bin/nm"
  #     ];
  #   });
  # });

  # 2024/05/31: upstreaming is unblocked; requires some changes, as configure tries to invoke our `python`
  # implemented (broken) on servo cross-staging-2023-07-30 branch
  # rpm = prev.rpm.overrideAttrs (upstream: {
  #   # fixes "python too old". might also be specifiable as a configure flag?
  #   env = upstream.env // lib.optionalAttrs (upstream.version == "4.18.1") {
  #     # 4.19.0 upgrade should fix cross compilation.
  #     # see: <https://github.com/NixOS/nixpkgs/pull/260558>
  #     PYTHON = python3.interpreter;
  #   };
  # });

  # 2024/08/12: upstreaming is unblocked
  snapshot = prev.snapshot.overrideAttrs (upstream: {
    # fixes "error: linker `cc` not found"
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/meson.build \
        --replace-fail "cargo, 'build'," "'${lib.getExe crossCargo}', 'build'," \
        --replace-fail "'src' / rust_target" "'src' / '${rust.envVars.rustHostPlatformSpec}' / rust_target"
    '';
  });

  # 2024/08/12: upstreaming is unblocked
  spot = (prev.spot.override { cargo = crossCargo; }).overrideAttrs (upstream: {
    # blueprint-compiler runs on the build machine, but tries to load gobject-introspection types meant for the host.
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/meson.build \
        --replace-fail \
          "find_program('blueprint-compiler')" \
          "'env', 'GI_TYPELIB_PATH=${typelibPath [
            buildPackages.gdk-pixbuf
            buildPackages.glib
            buildPackages.graphene
            buildPackages.gtk4
            buildPackages.harfbuzz
            buildPackages.libadwaita
            buildPackages.pango
          ]}', find_program('blueprint-compiler')" \
        --replace-fail \
          "meson.project_build_root() / cargo_output" \
          "meson.project_build_root() / 'src' / '${rust.envVars.rustHostPlatformSpec}' / rust_target / meson.project_name()"
    '';
  });

  # 2024/08/12: upstreaming is unblocked
  # squeekboard = prev.squeekboard.overrideAttrs (upstream: {
  #   # fixes: "meson.build:1:0: ERROR: 'rust' compiler binary not defined in cross or native file"
  #   # new error: "meson.build:1:0: ERROR: Rust compiler rustc --target aarch64-unknown-linux-gnu -C linker=aarch64-unknown-linux-gnu-gcc can not compile programs."
  #   # NB(2023/03/04): upstream nixpkgs has a new squeekboard that's closer to cross-compiling; use that
  #   # NB(2023/08/24): this emulates the entire rust build process
  #   mesonFlags =
  #     let
  #       # ERROR: 'rust' compiler binary not defined in cross or native file
  #       crossFile = writeText "cross-file.conf" ''
  #         [binaries]
  #         rust = [ 'rustc', '--target', '${rust.toRustTargetSpec stdenv.hostPlatform}' ]
  #       '';
  #     in
  #       # upstream.mesonFlags or [] ++
  #       [
  #         "-Dtests=false"
  #         "-Dnewer=true"
  #         "-Donline=false"
  #       ]
  #       ++ lib.optional
  #         (stdenv.hostPlatform != stdenv.buildPlatform)
  #         "--cross-file=${crossFile}"
  #       ;

  #   # cargoDeps = null;
  #   # cargoVendorDir = "vendor";

  #   # depsBuildBuild = (upstream.depsBuildBuild or []) ++ [
  #   #   pkg-config
  #   # ];
  #   # this is identical to upstream, but somehow build fails if i remove it??
  #   nativeBuildInputs = [
  #     meson
  #     ninja
  #     pkg-config
  #     glib
  #     wayland
  #     rustPlatform.cargoSetupHook
  #     cargo
  #     rustc
  #   ];
  # });

  # 2024/08/12: upstreaming is unblocked
  tangram = prev.tangram.overrideAttrs (upstream: {
    # blueprint-compiler runs on the build machine, but tries to load gobject-introspection types meant for the host.
    # additionally, gsjpack has a shebang for the host gjs. patchShebangs --build doesn't fix that: just manually specify the build gjs
    postPatch = (upstream.postPatch or "") + ''
      substituteInPlace src/meson.build \
        --replace-fail "find_program('gjs').full_path()" "'${gjs}/bin/gjs'" \
        --replace-fail "gjspack," "'env', 'GI_TYPELIB_PATH=${typelibPath [
          buildPackages.gdk-pixbuf
          buildPackages.glib
          buildPackages.graphene
          buildPackages.gtk4
          buildPackages.harfbuzz
          buildPackages.libadwaita
          buildPackages.pango
        ]}', '${buildPackages.gjs}/bin/gjs', '-m', gjspack,"
    '';
  });

  # fixes: "ar: command not found"
  # `ar` is provided by bintools
  # 2024/05/31: upstreaming is blocked on gnustep-base cross compilation
  # unar = addNativeInputs [ bintools ] prev.unar;

  # unixODBCDrivers = prev.unixODBCDrivers // {
  #   # TODO: should this package be deduped with toplevel psqlodbc in upstream nixpkgs?
  #   psql = prev.unixODBCDrivers.psql.overrideAttrs (_upstream: {
  #     # XXX: these are both available as configureFlags, if we prefer that (we probably do, so as to make them available only during specific parts of the build).
  #     ODBC_CONFIG = buildPackages.writeShellScript "odbc_config" ''
  #       exec ${stdenv.hostPlatform.emulator buildPackages} ${unixODBC}/bin/odbc_config $@
  #     '';
  #     PG_CONFIG = buildPackages.writeShellScript "pg_config" ''
  #       exec ${stdenv.hostPlatform.emulator buildPackages} ${postgresql}/bin/pg_config $@
  #     '';
  #   });
  # };

  # 2024/08/12: upstreaming is blocked on arrow-cpp, python-pyarrow, python-contourpy, python-matplotlib, python-hypy, etc
  # visidata = prev.visidata.override {
  #   # hdf5 / h5py don't cross-compile, but i don't use that file format anyway.
  #   # setting this to null means visidata will work as normal but not be able to load hdf files.
  #   h5py = null;
  # };
  # 2024/08/12: upstreaming is blocked on qtsvg, qtx11extras, samba
  # vlc = prev.vlc.overrideAttrs (orig: {
  #   # fixes: "configure: error: could not find the LUA byte compiler"
  #   # fixes: "configure: error: protoc compiler needed for chromecast was not found"
  #   nativeBuildInputs = orig.nativeBuildInputs ++ [ lua5 protobuf ];
  #   # fix that it can't find the c compiler
  #   # makeFlags = orig.makeFlags or [] ++ [ "CC=${prev.stdenv.cc.targetPrefix}cc" ];
  #   env = orig.env // {
  #     BUILDCC = "${stdenv.cc}/bin/${stdenv.cc.targetPrefix}cc";
  #   };
  # });

  # fixes "perl: command not found"
  # 2024/08/12: upstreaming is unblocked, but requires alternative fix
  # - i think the build script tries to run the generated binary?
  # vpnc = mvToNativeInputs [ perl ] prev.vpnc;

  # 2024/08/12: upstreaming is blocked on flatpak
  xdg-desktop-portal = prev.xdg-desktop-portal.overrideAttrs (upstream: {
    nativeBuildInputs = upstream.nativeBuildInputs ++ [
      # fixes "meson.build:117:8: ERROR: Program 'bwrap' not found or not executable"
      bubblewrap
    ]; # ++ upstream.nativeCheckInputs;
    mesonFlags = (upstream.mesonFlags or []) ++ [
      # fixes "tests/meson.build:268:9: ERROR: Program 'pytest-3 pytest' not found or not executable"
      # nixpkgs should add this whenever doCheck == false, i think
      "-Dpytest=disabled"
    ];
  });

  # fixes: "data/meson.build:33:5: ERROR: Program 'msgfmt' not found or not executable"
  # fixes: "src/meson.build:25:0: ERROR: Program 'gdbus-codegen' not found or not executable"
  # 2024/08/12: upstreaming is blocked on xdg-desktop-portal
  # xdg-desktop-portal-gnome = (
  #   addNativeInputs [ wayland-scanner ] (
  #     mvToNativeInputs [ gettext glib ] prev.xdg-desktop-portal-gnome
  #   )
  # );
  xdg-desktop-portal-gnome = prev.xdg-desktop-portal-gnome.override {
    # xdp-gnome uses libjxl as a gdk pixbuf loader,
    # but nixpkgs' libjxl disables the pixbuf loader when cross compiling,
    # so xdp-gnome fails, expecting a pixbuf loader where there is none.
    # solution: disable the libjxl pixbuf loader (by replacing it with a working pixbuf, already used by xdp-gnome).
    # this means no jpeg thumbnailing.
    libjxl = webp-pixbuf-loader;
  };

  # 2024/08/12: upstreaming is blocked on hyprland
  # waybar = (prev.waybar.override {
  #   runTests = false;  #< upstream expects `catch2_3` as a runtime requirement
  #   hyprlandSupport = false;  # doesn't cross compile
  #   # fixes: "/nix/store/sc1pz0zaqwpai24zh7xx0brjinflmc6v-aarch64-unknown-linux-gnu-binutils-2.40/bin/aarch64-unknown-linux-gnu-ld: /nix/store/ghxl1zrfnvh69dmv7xa1swcbyx06va4y-wayland-1.22.0/lib/libwayland-client.so: error adding symbols: file in wrong format"
  #   wrapGAppsHook = wrapGAppsNoGuiHook;
  # }).overrideAttrs (upstream: {
  #   nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #     buildPackages.wayland-scanner
  #     (makeShellWrapper.overrideAttrs (_: {
  #       # else it tries to invoke the host CC compiler (??)
  #       shell = runtimeShell;
  #     }))
  #   ];
  #   # buildInputs = upstream.buildInputs ++ [ catch2_3 ];  #< either this or override `runTests = false`
  #   mesonFlags = upstream.mesonFlags ++ [
  #     # fixes "Dependency lookup for scdoc with method 'pkgconfig' failed: Pkg-config binary for machine 0 not found. Giving up."
  #     "-Dman-pages=disabled"
  #   ];
  # });
  # waybar = (prev.waybar.override { runTests = false; }).overrideAttrs (upstream: {
  #   nativeBuildInputs = upstream.nativeBuildInputs ++ [
  #     wayland-scanner
  #   ];
  #   strictDeps = true;
  # });

  # 2024/05/31: upstreaming is blocked by qtsvg, appstream
  wike = prev.wike.overrideAttrs (upstream: {
    # error: "<wike> is not allowed to refer to the following paths: <build python>"
    # wike's meson build script sets host binaries to use build PYTHON
    # disallowedReferences = [];
    postFixup = (upstream.postFixup or "") + ''
      patchShebangs --update $out/share/wike/wike-sp
    '';
  });

  # 2024/08/12: upstreaming is unblocked
  # fixes `hostPrograms.moby.neovim` (but breaks eval of `hostPkgs.moby.neovim` :o)
  # wrapNeovimUnstable = neovim: config: (prev.wrapNeovimUnstable neovim config).overrideAttrs (upstream: {
  #   # nvim wrapper has a sanity check that the plugins will load correctly.
  #   # this is effectively a check phase and should be rewritten as such
  #   postBuild = lib.replaceStrings
  #     [ "! $out/bin/nvim-wrapper" ]
  #     # [ "${stdenv.hostPlatform.emulator buildPackages} $out/bin/nvim-wrapper" ]
  #     [ "false && $out/bin/nvim-wrapper" ]
  #     upstream.postBuild;
  # });

  # 2024/05/31: upstreaming is blocked on unar (gnustep), unless i also make that optional
  xarchiver = mvToNativeInputs [ libxslt ] prev.xarchiver;
}
