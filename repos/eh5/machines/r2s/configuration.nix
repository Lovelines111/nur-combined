{ config, pkgs, lib, ... }:
{
  sops.defaultSopsFormat = "binary";
  sops.secrets.mosdnsConfig.sopsFile = ./secrets/mosdns.yaml.sops;
  sops.secrets.tproxyRule.sopsFile = ./secrets/tproxy.nft.sops;
  sops.secrets.v2rayConfig.sopsFile = ./secrets/v2ray.jsonc.sops;

  nix = {
    settings = {
      substituters = lib.mkForce [
        "https://mirrors.ustc.edu.cn/nix-channels/store"
        "https://cache.nixos.org"
        "https://eh5.cachix.org"
      ];
      trusted-public-keys = [ "eh5.cachix.org-1:pNWZ2OMjQ8RYKTbMsiU/AjztyyC8SwvxKOf6teMScKQ=" ];
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };
  };
  nixpkgs.config.allowUnfree = true;

  networking.hostName = "nixos-r2s";

  time.timeZone = "Asia/Shanghai";

  documentation.man.enable = true;
  documentation.dev.enable = false;
  documentation.doc.enable = false;
  documentation.nixos.enable = false;

  programs.command-not-found.enable = true;
  programs.vim.defaultEditor = true;

  services.openssh = {
    enable = true;
    permitRootLogin = "yes";
  };

  system.autoUpgrade = {
    enable = true;
    dates = "04:00";
    randomizedDelaySec = "60min";
    flake = "github:EHfive/flakes";
    allowReboot = true;
  };
  nix.gc.automatic = true;
  nix.optimise.automatic = true;

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM3wDrWMAdPILZrRGggLHrvV3qsctMS/TrQkFdc4c81r"
  ];

  environment.systemPackages = with pkgs; [
    bind
    file
    htop
    iperf2
    lm_sensors
    lsof
    nodejs-17_x
    usbutils
  ] ++ (with config.boot.kernelPackages; [
    cpupower
  ]);
}
