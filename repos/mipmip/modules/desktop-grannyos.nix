{ config, lib, pkgs, ... }:

{

  time.timeZone = "Europe/Amsterdam";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "nl_NL.UTF-8";
    LC_IDENTIFICATION = "nl_NL.UTF-8";
    LC_MEASUREMENT = "nl_NL.UTF-8";
    LC_MONETARY = "nl_NL.UTF-8";
    LC_NAME = "nl_NL.UTF-8";
    LC_NUMERIC = "nl_NL.UTF-8";
    LC_PAPER = "nl_NL.UTF-8";
    LC_TELEPHONE = "nl_NL.UTF-8";
    LC_TIME = "nl_NL.UTF-8";
  };


  environment.gnome.excludePackages = (with pkgs; [
    #gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-music
    gedit # text editor
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
    yelp # Help view
    gnome-initial-setup
  ]);

  environment.systemPackages = with pkgs; [

    #NIX/GNOME/HOMEMANAGER
    dconf2nix

    # NEMO-DESKTOP
    cinnamon.nemo

    # GrandPerspective
    baobab

    # UTILS
    gnome.gnome-tweaks
    gnome.gpaste
    gnome-secrets

    whitesur-icon-theme
    whitesur-gtk-theme

    tdesktop

    libreoffice

    nextcloud-client
  ];
}


