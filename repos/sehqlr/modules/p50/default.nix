{ config, home-manager, lib, pkgs, ... }: {
  home-manager.users.sam = import ./hm.nix { inherit config home-manager lib pkgs; };

  hardware.pulseaudio.enable = true;

  networking.hostName = "p50";
  networking.useDHCP = false;
  networking.interfaces.enp0s31f6.useDHCP = true;
  networking.interfaces.wlp4s0.useDHCP = true;

  programs.steam.enable = true;

  programs.sway.enable = true;

  services.flatpak.enable = true;

  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
  };

  time.timeZone = "America/Chicago";

  xdg.portal.enable = true;
}
