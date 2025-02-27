{
  config,
  pkgs,
  lib,
  data,
  ...
}:
let
  p = with pkgs; {

    python = [
      (python311.withPackages (
        ps: with ps; [
          pandas
          requests
          absl-py
          tldextract
          bleak
          matplotlib
          clang
          pyyaml
        ]
      ))
    ];
    dev = [
      ktistec
      gitoxide
      gitui
      nushell
      radicle
      # friture
      qemu-utils
      yubikey-personalization
      racket
      resign
      pv
      devenv
      # gnome.dconf-editor
      rustup
      [
        swagger-codegen3
        bump2version
        openssl
        linuxPackages_latest.perf
        cloud-utils
      ]
      [
        bpf-linker
        gdb
        gcc
        gnumake
        cmake
      ] # clang-tools_15 llvmPackages_latest.clang ]
      # [ openocd ]
      lua
      delta
      # nodejs-18_x
      switch-mute
      go

      nix-tree
      kotlin
      jre17_minimal
      inotify-tools
      rustup
      tmux
      # awscli2

      trunk
      cargo-expand
      wasmtime
      comma
      nix-update
      nodejs_latest.pkgs.pnpm
    ];

    net = [
      # anti-censor
      [
        sing-box
        rathole
        tor
        arti
        tuic
        phantomsocks
      ]

      [
        rustscan
        stun
        bandwhich
        fscan
        iperf3
        i2p
        ethtool
        dnsutils
        autossh
        tcpdump
        netcat
        dog
        wget
        mtr-gui
        socat
        miniserve
        mtr
        wakelan
        q
        nali
        lynx
        nethogs
        restic
        w3m
        whois
        dig
        wireguard-tools
        curlHTTP3
        xh
        ngrep
        gping
        knot-dns
        tcping-go
        httping
        iftop
      ]
    ];
    # graph = [
    #   vulkan-validation-layers
    # ];

    cmd = [
      eza
      fzf
      mcrcon
      zola

      smartmontools
      difftastic
      btop
      atuin
      minio-client
      # attic
      deno
      ntfy-sh
      _7zz
      yazi
      rclone

      distrobox
      dmidecode

      helix
      srm
      # onagre
      libsixel
      ouch
      nix-output-monitor

      # common
      [
        killall
        hexyl
        jq
        fx
        bottom
        lsd
        fd
        choose
        duf
        tokei
        procs
        lsof
        tree
        bat
      ]
      [
        broot
        ranger
        ripgrep
        qrencode
        lazygit
        b3sum
        unzip
        zip
        coreutils
        inetutils
        pciutils
        usbutils
      ]
    ];
    # # ripgrep-all 

    info = [
      parallel-disk-usage # disk space info
      freshfetch
      htop
      onefetch
      hardinfo
      hyprpicker
      imgcat
      nix-index
      ccze
    ];
  };
in
{
  environment.systemPackages =
    lib.flatten (lib.attrValues p)
    ++ (with pkgs; [
      unar
      podman-compose
      docker-compose
    ])
    ++ [
      ((pkgs.vim_configurable.override { }).customize {
        name = "vim";
        # Install plugins for example for syntax highlighting of nix files
        vimrcConfig.packages.myplugins = with pkgs.vimPlugins; {
          start = [
            vim-nix
            vim-lastplace
          ];
          opt = [ ];
        };
        vimrcConfig.customRC = ''
          " your custom vimrc
          set nocompatible
          set backspace=indent,eol,start
          " Turn on syntax highlighting by default
          syntax on

          :let mapleader = " "
          :map <leader>s :w<cr>
          :map <leader>q :q<cr>
          :map <C-j> 5j
          :map <C-k> 5k
        '';
      })
    ];
}
