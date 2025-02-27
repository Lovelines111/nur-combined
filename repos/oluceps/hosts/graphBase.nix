{
  config,
  pkgs,
  lib,
  inputs,
  user,
  ...
}:
{
  xdg = {
    mime = {
      enable = true;
      defaultApplications =
        {
          "application/x-xdg-protocol-tg" = [ "org.telegram.desktop.desktop" ];
          "x-scheme-handler/tg" = [ "org.telegram.desktop.desktop" ];
          "application/pdf" = [ "sioyek.desktop" ];
          "ppt/pptx" = [ "wps-office-wpp.desktop" ];
          "doc/docx" = [ "wps-office-wps.desktop" ];
          "xls/xlsx" = [ "wps-office-et.desktop" ];
        }
        // lib.genAttrs
          [
            "x-scheme-handler/unknown"
            "x-scheme-handler/about"
            "x-scheme-handler/http"
            "x-scheme-handler/https"
            "x-scheme-handler/mailto"
            "text/html"
          ]
          # (_: "brave-browser.desktop")
          (_: "firefox.desktop")
        // lib.genAttrs [
          "image/gif"
          "image/webp"
          "image/png"
          "image/jpeg"
        ] (_: "org.gnome.Loupe.desktop")
        // lib.genAttrs [
          "inode/directory"
          "inode/mount-point"
        ] (_: "org.gnome.Nautilus.desktop");
    };
    portal = {
      enable = true;
      wlr.enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      config = {
        common = {
          "default" = [ "gtk" ];
          "org.freedesktop.impl.portal.ScreenCast" = [ "wlr" ];
          "org.freedesktop.impl.portal.Screenshot" = [ "wlr" ];
        };
      };
    };
  };

  systemd.user.targets.sway-session = {
    unitConfig = {
      Description = "sway compositor session";
      Documentation = [ "man:systemd.special(7)" ];
      BindsTo = [ "graphical-session.target" ];
      Wants = [ "graphical-session-pre.target" ];
      After = [ "graphical-session-pre.target" ];
    };
  };
  programs = {
    dconf.enable = true;
    anime-game-launcher.enable = true; # Adds launcher and /etc/hosts rules
    # niri.enable = true;
    sway = {
      enable = true;
      xwayland.enable = true;
      wrapperFeatures.gtk = true;
    };
    wireshark = {
      enable = true;
      package = pkgs.wireshark;
    };
    kdeconnect.enable = true;
    adb.enable = true;
    command-not-found.enable = false;
    steam = {
      enable = true;
      package = pkgs.steam.override { extraPkgs = pkgs: [ pkgs.maple-mono-SC-NF ]; };
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };
    firefox = {
      enable = true;
      package = (pkgs.wrapFirefox.override { libpulseaudio = pkgs.libpressureaudio; }) (
        pkgs.firefox-unwrapped.override
        { pipewireSupport = true; }
      ) { };
    };
    gnupg = {
      agent = {
        enable = false;
        pinentryPackage = pkgs.pinentry-curses;
        enableSSHSupport = true;
      };
    };
  };
  environment.systemPackages =
    lib.flatten (
      lib.attrValues (
        with pkgs;
        {
          crypt = [
            # mieru
            minisign
            rage
            age-plugin-yubikey
            cryptsetup
            tpm2-tss
            tpm2-tools
            yubikey-manager
            monero-cli
          ];

          dev = [ vscode.fhs ];

          lang = [
            [
              editorconfig-checker
              kotlin-language-server
              sumneko-lua-language-server
              yaml-language-server
              tree-sitter
              stylua
              biome
              # black
            ]
            # languages related
            [
              zig
              lldb
              # haskell-language-server
              gopls
              cmake-language-server
              zls
              android-file-transfer
              nixpkgs-review
              shfmt
            ]
          ];
          # wine = [
          #   # bottles
          #   wineWowPackages.stable

          #   # support 32-bit only
          #   # wine

          #   # support 64-bit only
          #   (wine.override { wineBuild = "wine64"; })

          #   # wine-staging (version with experimental features)
          #   wineWowPackages.staging

          #   # winetricks (all versions)
          #   winetricks

          #   # native wayland support (unstable)
          #   wineWowPackages.waylandFull
          # ];

          db = [ mongosh ];

          web = [ hugo ];

          de = with gnomeExtensions; [
            simple-net-speed
            paperwm
          ];

          virt = [
            # virt-manager
            virtiofsd
            runwin
            guix-run
            runbkworm
            bkworm
            arch-run
            # ubt-rv-run
            #opulr-a-run
            lunar-run
            virt-viewer
          ];
          fs = [
            gparted
            e2fsprogs
            fscrypt-experimental
            f2fs-tools
            compsize
          ];

          cmd = [
            metasploit
            # linuxKernel.packages.linux_latest_libre.cpupower
            clean-home
            just
            typst
            cosmic-term
            acpi
            swww
          ];
          bluetooth = [ bluetuith ];

          sound = [ pulseaudio ];

          display = [ cage ];

          cursor = [ graphite-cursors ];
        }
      )
    )
    ++ (with pkgs.nodePackages; [
      typescript-language-server
      node2nix
      markdownlint-cli2
      prettier
    ])

  ;
  virtualisation = {
    libvirtd = {
      enable = false;
      qemu.ovmf = {
        enable = true;
        packages =
          # let
          #   pkgs = import inputs.nixpkgs-22 {
          #     system = "x86_64-linux";
          #   };
          # in
          [
            pkgs.OVMFFull.fd
            pkgs.pkgsCross.aarch64-multiplatform.OVMF.fd
          ];
      };
      qemu.swtpm.enable = true;
    };
    waydroid.enable = false;
  };

  qt = {
    enable = true;
    platformTheme = "gnome";
    style = "adwaita";
  };
  security = {
    pam.services.swaylock = { };
    rtkit.enable = true;
  };
  services = {
    swayidle = {
      enable = true;
      timeouts = [
        {
          timeout = 900;
          command = "${pkgs.swaylock}/bin/swaylock";
        }
      ];
      events = [
        {
          event = "lock";
          command = "${pkgs.swaylock}/bin/swaylock";
        }
        {
          event = "before-sleep";
          command = "/run/current-system/systemd/bin/loginctl lock-session";
        }
      ];
    };

    # desktopManager.cosmic.enable = true;
    # displayManager.cosmic-greeter.enable = true;
    greetd = {
      enable = true;
      settings = rec {
        initial_session = {
          command = "${lib.getExe pkgs.greetd.tuigreet} --remember --time --cmd ${pkgs.writeShellScript "sway" ''
            while read -r l; do
              eval export $l
            done < <(/run/current-system/systemd/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)

            exec systemd-cat --identifier=sway sway
          ''}";
          inherit user;
        };
        default_session = initial_session;
      };
    };

    acpid.enable = true;
    udev = {
      extraRules = ''
        ACTION=="remove",\
         ENV{ID_BUS}=="usb",\
         ENV{ID_MODEL_ID}=="0407",\
         ENV{ID_VENDOR_ID}=="1050",\
         ENV{ID_VENDOR}=="Yubico",\
         RUN+="${pkgs.systemd}/bin/loginctl lock-sessions"
      '';
      packages = with pkgs; [
        android-udev-rules
        # qmk-udev-rules
        jlink-udev-rules
        yubikey-personalization
        libu2f-host
        via
        opensk-udev-rules
        nrf-udev-rules
      ];
    };
    gnome.gnome-keyring.enable = true;

    flatpak.enable = true;
    pcscd.enable = true;
    xserver = {
      enable = lib.mkDefault false;
      xkb.layout = "us";
    };
  };

  systemd.user.services.nix-index = {
    environment = config.networking.proxy.envVars;
    script = ''
      FILE=index-x86_64-linux
      mkdir -p ~/.cache/nix-index
      cd ~/.cache/nix-index
      ${pkgs.curl}/bin/curl -LO https://github.com/Mic92/nix-index-database/releases/latest/download/$FILE
      mv -v $FILE files
    '';
    serviceConfig = {
      Restart = "on-failure";
      Type = "oneshot";
    };
    startAt = "weekly";
  };

  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;
    enableGhostscriptFonts = false;
    packages =
      with pkgs;
      [

        (nerdfonts.override {
          fonts = [
            "FiraCode"
            "JetBrainsMono"
            "FantasqueSansMono"
          ];
        })
        source-han-sans
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        twemoji-color-font
        maple-mono-SC-NF
        maple-mono-otf
        maple-mono-autohint
        cascadia-code
        intel-one-mono
        monaspace
      ]
      ++ (with pkgs.glowsans; [
        glowsansSC
        glowsansTC
        glowsansJ
      ])
      ++ (with pkgs; [
        san-francisco
        plangothic
        maoken-tangyuan
        lxgw-neo-xihei
      ]);
    #"HarmonyOS Sans SC" "HarmonyOS Sans TC"
    fontconfig = {
      subpixel.rgba = "none";
      antialias = true;
      hinting.enable = false;
      defaultFonts = lib.mkForce {
        serif = [
          "Glow Sans SC"
          "Glow Sans TC"
          "Glow Sans J"
          "Noto Serif"
          "Noto Serif CJK SC"
          "Noto Serif CJK TC"
          "Noto Serif CJK JP"
          "LXGW Neo XiHei"
        ];
        monospace = [
          "Monaspace Neon"
          "Maple Mono"
          "SF Mono"
          "Fantasque Sans Mono"
        ];
        sansSerif = [
          "Hanken Grotesk"
          "Glow Sans SC"
          "LXGW Neo XiHei"
        ];
        emoji = [
          "twemoji-color-font"
          "noto-fonts-emoji"
        ];
      };
    };
  };

  # $ nix search wget
  i18n = {

    inputMethod = {
      enabled = "fcitx5";
      fcitx5.addons = with pkgs; [
        fcitx5-chinese-addons
        fcitx5-mozc
        fcitx5-gtk
        fcitx5-configtool
        fcitx5-pinyin-zhwiki
        fcitx5-pinyin-moegirl
      ];
    };
  };
}
