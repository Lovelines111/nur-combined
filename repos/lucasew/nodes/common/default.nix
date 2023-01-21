{self, pkgs, lib, ...}:
let
  inherit (self) inputs;
in
{
  imports = [
    ./nginx.nix
    ./cockpit-extra.nix
    ../bootstrap/default.nix
    ../../modules/cachix/system.nix
    ../../modules/hold-gc/system.nix
    ./ansible-python.nix
    ./p2k.nix
    ./dhtcrawler.nix
    ./tuning.nix
    ./tmux
    ./bash
    ./kvm.nix
    ./unstore.nix
    ./dns.nix
    "${inputs.simple-dashboard}/nixos-module.nix"
  ];

  services.unstore = {
    # enable = true;
    paths = [
      "flake.nix"
    ];
  };

  boot.loader.grub.memtest86.enable = true;

  virtualisation.docker = {
    enable = true;
    # dockerSocket.enable = true;
    # dockerCompat = true;
    enableNvidia = true;
  };

  environment = {
    systemPackages = with pkgs; [
      rlwrap
      wget
      curl
      unrar
      direnv
      pciutils
      usbutils
      htop
      lm_sensors
      neofetch
    ];
  };
  cachix.enable = true;

  services.smartd = {
    enable = true;
    autodetect = true;
    notifications.test = true;
  };

  services.nginx.appendHttpConfig = ''
    error_log stderr;
    access_log syslog:server=unix:/dev/log combined;
  '';
}
