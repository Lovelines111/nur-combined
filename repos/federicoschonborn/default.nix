# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage
{ pkgs ? import <nixpkgs> { } }: rec {
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  blurble = pkgs.callPackage ./packages/blurble { };
  brisk-menu = pkgs.callPackage ./packages/brisk-menu { };
  bsdutils = pkgs.callPackage ./packages/bsdutils { inherit libxo; };
  cargo-aoc = pkgs.callPackage ./packages/cargo-aoc { };
  chess-clock = pkgs.callPackage ./packages/chess-clock { };
  damask = pkgs.callPackage ./packages/damask { };
  devtoolbox = pkgs.callPackage ./packages/devtoolbox { };
  fastfetch = pkgs.callPackage ./packages/fastfetch { };
  fastfetchFull = (fastfetch.overrideAttrs (oldAttrs: {
    pname = "${oldAttrs.pname}-full";
    meta = oldAttrs.meta // {
      description = "${oldAttrs.meta.description} (with all features enabled)";
    };
  })).override {
    enableChafa = true;
    enableDbus = true;
    enableDconf = true;
    enableEgl = true;
    enableFreetype = true;
    enableGio = true;
    enableGlx = true;
    enableImagemagick = true;
    enableLibcjson = true;
    enableLibnm = true;
    enableLibpci = true;
    enableMesa = true;
    enableOpencl = true;
    enablePulse = true;
    enableRpm = true;
    enableSqlite3 = true;
    enableVulkan = true;
    enableWayland = true;
    enableX11 = true;
    enableXcb = true;
    enableXfconf = true;
    enableXrandr = true;
    enableZlib = true;
  };
  firefox-gnome-theme = pkgs.callPackage ./packages/firefox-gnome-theme { };
  gradebook = pkgs.callPackage ./packages/gradebook { };
  health = pkgs.callPackage ./packages/health { };
  kommit = pkgs.libsForQt5.callPackage ./packages/kommit { };
  libgta = pkgs.callPackage ./packages/libgta { };
  libtgd = pkgs.callPackage ./packages/libtgd { inherit libgta; };
  libtgdFull = (libtgd.overrideAttrs (oldAttrs: {
    pname = "${oldAttrs.pname}-full";
    meta = oldAttrs.meta // {
      description = "${oldAttrs.meta.description} (with all features enabled)";
    };
  })).override {
    withCfitsio = true;
    withDmctk = true;
    withExiv2 = true;
    withFfmpeg = true;
    withGdal = true;
    withGta = true;
    withHdf5 = true;
    # ImageMagick 6 is marked as insecure
    withImagemagick = false;
    withLibjpeg = true;
    withLibpng = true;
    withLibtiff = true;
    withMatio = true;
    withMuparser = true;
    withOpenexr = true;
    # Requires ImageMagick 6
    withPfstools = false;
    withPoppler = true;
  };
  highscore = pkgs.callPackage ./packages/highscore { retro-gtk = retro-gtk_2; };
  libxo = pkgs.callPackage ./packages/libxo { };
  liquidshell = pkgs.libsForQt5.callPackage ./packages/liquidshell { };
  loupe = pkgs.callPackage ./packages/loupe {
    gtk4 = gtk4_11;
    wrapGAppsHook4 = wrapGAppsHook4_11;
  };
  metronome = pkgs.callPackage ./packages/metronome { };
  morewaita = pkgs.callPackage ./packages/morewaita { };
  mucalc = pkgs.callPackage ./packages/mucalc { };
  opensurge = pkgs.callPackage ./packages/opensurge { inherit surgescript; };
  qv = pkgs.qt6.callPackage ./packages/qv { inherit libtgd; };
  share-preview = pkgs.callPackage ./packages/share-preview { };
  snapshot = pkgs.callPackage ./packages/snapshot {
    gtk4 = gtk4_11;
    libadwaita = libadwaita_1_4;
    wrapGAppsHook4 = wrapGAppsHook4_11;
  };
  srb2p = pkgs.callPackage ./packages/srb2p { };
  surgescript = pkgs.callPackage ./packages/surgescript { };
  telegraph = pkgs.callPackage ./packages/telegraph { };
  textsnatcher = pkgs.callPackage ./packages/textsnatcher { };
  tuba = pkgs.callPackage ./packages/tuba { };

  wrapGAppsHook4_11 = pkgs.wrapGAppsHook4.override { gtk3 = gtk4_11; };

  gtk4_11 = pkgs.gtk4.overrideAttrs (oldAttrs: {
    version = "unstable-2023-05-16";
    src = pkgs.fetchFromGitLab {
      domain = "gitlab.gnome.org";
      owner = "GNOME";
      repo = "gtk";
      rev = "4d66598f315d32a4798b5f67cb0cbc32d05b983c";
      hash = "sha256-I3J2gnk+WXZ8IGPmHtP9hoiSC9XjFhbDjkS2WU9DqwY=";
    };
    postPatch = (oldAttrs.postPatch or "") + ''
      patchShebangs build-aux/meson/gen-visibility-macros.py
    '';
    doCheck = false;
  });

  libadwaita_1_4 = (pkgs.libadwaita.overrideAttrs (oldAttrs: {
    version = "unstable-2023-05-16";
    src = pkgs.fetchFromGitLab {
      domain = "gitlab.gnome.org";
      owner = "GNOME";
      repo = "libadwaita";
      rev = "0c154e202060b9de9154ddd70b3d4abfc2ffe09b";
      hash = "sha256-C2XavYfcojIWogyu9niknjbbQwK5pPNcZCR/eBr+YS4=";
    };
    buildInputs = oldAttrs.buildInputs ++ [ pkgs.appstream ];
    doCheck = false;
  })).override { gtk4 = gtk4_11; };

  retro-gtk_2 = pkgs.retro-gtk.overrideAttrs (_: {
    version = "unstable-2022-11-09";
    src = pkgs.fetchFromGitLab {
      domain = "gitlab.gnome.org";
      owner = "GNOME";
      repo = "retro-gtk";
      rev = "9033b2a09f4de3ad4e2e70d80841291c3e4fed9c";
      hash = "sha256-NnB2PRS4Ty06m1TPmUMZvRkq/AY/4BOFEncJt0+CBmU=";
    };
    patches = [ ];
    buildInputs = with pkgs; [
      libepoxy
      libpulseaudio
      libsamplerate
      gtk4
    ];
  });
}
