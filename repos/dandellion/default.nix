# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixos-unstable> {} }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  # some-qt5-package = pkgs.libsForQt5.callPackage ./pkgs/some-qt5-package { };
  # ...

  rank_photos = pkgs.callPackage ./pkgs/rank_photos { };
  JAVMovieScraper = pkgs.callPackage ./pkgs/JAVMovieScraper { };

  janus = pkgs.libsForQt5.callPackage ./pkgs/JanusVR/client { };

  radical-native = pkgs.callPackage ./pkgs/radical-native { };
  photini = pkgs.libsForQt5.callPackage ./pkgs/photini { };

  mangohud = pkgs.callPackage ./pkgs/MangoHUD { };

  botamusique = pkgs.callPackage ./pkgs/botamusique {};

}

