{
  pkgs,
  data,
  config,
  user,
  lib,
  inputs,
  ...
}:
{
  # This headless machine uses to perform heavy task.
  # Running database and web services.

  system.stateVersion = "22.11"; # Did you read the comment?
  users.mutableUsers = false;
  system.etc.overlay.mutable = false;
  environment.etc."resolv.conf".text = ''
    nameserver 127.0.0.1
  '';

  zramSwap = {
    enable = false;
    swapDevices = 1;
    memoryPercent = 80;
    algorithm = "zstd";
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 10d";
  };
  programs.fish.loginShellInit = ''
    ${pkgs.openssh}/bin/ssh-add ${config.age.secrets.id.path}
  '';

  # hardware = {
  #   nvidia = {
  #     package = config.boot.kernelPackages.nvidiaPackages.latest;
  #     modesetting.enable = true;
  #     powerManagement.enable = false;
  #     open = false;
  #   };

  #   graphics = {
  #     enable = true;
  #   };
  # };
  systemd = {
    services = {
      atuin.serviceConfig.Environment = [ "RUST_LOG=debug" ];
      # pleroma.serviceConfig.LoadCredential = [ ("config.exs:" + config.age.secrets.pleroma.path) ];
      # atticd.serviceConfig.Environment = [
      #   "RUST_LOG=debug"
      #   "RUST_BACKTRACE=1"
      # ];
      # restic-backups-solid.serviceConfig.Environment = [ "GOGC=20" ];
    };

    # systemd.services.tester = {
    #   serviceConfig = {
    #     Type = "simple";
    #     ExecStart = "exit 3";
    #     ExecStopPost = lib.genNtfyMsgScriptPath "tags warning prio high" "info" "test";
    #   };
    #   wantedBy = [ "multi-user.target" ];
    # };

    # Given that our systems are headless, emergency mode is useless.
    # We prefer the system to attempt to continue booting so
    # that we can hopefully still access it remotely.
    enableEmergencyMode = false;

    # For more detail, see:
    #   https://0pointer.de/blog/projects/watchdog.html
    watchdog = {
      # systemd will send a signal to the hardware watchdog at half
      # the interval defined here, so every 10s.
      # If the hardware watchdog does not get a signal for 20s,
      # it will forcefully reboot the system.
      runtimeTime = "20s";
      # Forcefully reboot if the final stage of the reboot
      # hangs without progress for more than 30s.
      # For more info, see:
      #   https://utcc.utoronto.ca/~cks/space/blog/linux/SystemdShutdownWatchdog
      rebootTime = "30s";
    };

    sleep.extraConfig = ''
      AllowSuspend=no
      AllowHibernation=no
    '';
  };

  # photoprism minio
  networking.firewall.allowedTCPPorts = [
    9000
    9001
    6622
  ] ++ [ config.services.photoprism.port ];

  systemd.services.prometheus.serviceConfig.LoadCredential = (map (lib.genCredPath config)) [
    "prom"
  ];

  services.smartd.notifications.systembus-notify.enable = true;
  srv = {
    openssh.enable = true;
    fail2ban.enable = true;
    dae.enable = true;
    scrutiny.enable = true;
    ddns-go.enable = true;
    # atticd.enable = true;
    atuin.enable = true;
    postgresql.enable = true;
    # photoprism.enable = true;
    mysql.enable = true;
    prometheus.enable = true;
    vaultwarden.enable = true;
    minecraft-servers.enable = false;
    matrix-conduit.enable = true;
    # coredns.enable = true;
    mosproxy.enable = true;
    srs.enable = true;
    pleroma.enable = true;

    phantomsocks = {
      enable = false;
      override = {
        settings.interfaces = [
          {
            device = "bond0";
            dns = "tcp://208.67.220.220:5353";
            hint = "w-seq,https,w-md5";
            name = "default";
          }
          {
            device = "bond0";
            dns = "tcp://208.67.220.220:443";
            hint = "ipv6,w-seq,w-md5";
            name = "v6";
          }
          {
            device = "bond0";
            dns = "tcp://208.67.220.220:443";
            hint = "df";
            name = "df";
          }
          {
            device = "bond0";
            dns = "tcp://208.67.220.220:5353";
            hint = "http,ttl";
            name = "http";
            ttl = 15;
          }
        ];
      };
    };
  };
  services = {
    radicle.enable = true;
    metrics.enable = true;
    fwupd.enable = true;
    harmonia = {
      enable = true;
      signKeyPath = config.age.secrets.harmonia.path;
    };
    realm = {
      enable = false;
      settings = {
        log.level = "warn";
        network = {
          no_tcp = false;
          use_udp = true;
        };
        endpoints = [
          {
            listen = "[::]:2222";
            remote = "127.0.0.1:3001";
          }
        ];
      };
    };

    prom-ntfy-bridge.enable = true;
    # xserver.videoDrivers = [ "nvidia" ];

    # xserver.enable = true;
    # xserver.displayManager.gdm.enable = true;
    # xserver.desktopManager.gnome.enable = true;

    # nextchat.enable = true;

    snapy.instances = [
      {
        name = "persist";
        source = "/persist";
        keep = "2day";
        timerConfig.onCalendar = "*:0/10";
      }
      {
        name = "var";
        source = "/var";
        keep = "7day";
        timerConfig.onCalendar = "daily";
      }
    ];

    tailscale = {
      enable = true;
      openFirewall = true;
    };

    sing-box.enable = true;
    restic = {
      backups = {
        solid = {
          passwordFile = config.age.secrets.wg.path;
          repositoryFile = config.age.secrets.restic-repo.path;
          environmentFile = config.age.secrets.restic-envs.path;
          paths = [
            "/persist"
            "/var"
          ];
          extraBackupArgs = [
            "--one-file-system"
            "--exclude-caches"
            "--no-scan"
            "--retry-lock 2h"
          ];
          timerConfig = {
            OnCalendar = "daily";
            RandomizedDelaySec = "4h";
            FixedRandomDelay = true;
            Persistent = true;
          };
        };
        critic = {
          passwordFile = config.age.secrets.wg.path;
          repositoryFile = config.age.secrets.restic-repo-crit.path;
          environmentFile = config.age.secrets.restic-envs-crit.path;
          paths = [
            "/var/lib/backup"
            "/var/lib/private/matrix-conduit"
          ];
          extraBackupArgs = [
            "--exclude-caches"
            "--no-scan"
            "--retry-lock 2h"
          ];
          pruneOpts = [ "--keep-daily 3" ];
          timerConfig = {
            OnCalendar = "daily";
            RandomizedDelaySec = "4h";
            FixedRandomDelay = true;
            Persistent = true;
          };
        };
      };
    };
    # cloudflared = {
    #   enable = true;
    #   environmentFile = config.age.secrets.cloudflare-garden-00.path;
    # };
    # compose-up.instances = [
    #   {
    #     name = "misskey";
    #     workingDirectory = "/home/${user}/Src/misskey";
    #   }
    #   {
    #     name = "nextchat";
    #     workingDirectory = "/home/${user}/Src/ChatGPT-Next-Web";
    #     extraArgs = "chatgpt-next-web";
    #     environmentFile = config.age.secrets.nextchat.path;
    #   }
    # ];

    hysteria.instances = [
      {
        name = "nodens";
        configFile = config.age.secrets.hyst-us-cli.path;
      }
      # {
      #   name = "colour";
      #   configFile = config.age.secrets.hyst-az-cli.path;
      # }
    ];

    shadowsocks.instances = [
      {
        name = "rha";
        configFile = config.age.secrets.ss-az.path;
        serve = {
          enable = true;
          port = 6059;
        };
      }
    ];

    gvfs.enable = false;

    postgresqlBackup = {
      enable = true;
      location = "/var/lib/backup/postgresql";
      compression = "zstd";
      startAt = "*-*-* 04:00:00";
    };

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      # pulse.enable = true;
      # jack.enable = true;
    };

    minio = {
      enable = true;
      region = "ap-east-1";
      rootCredentialsFile = config.age.secrets.minio.path;
    };
  };
}
