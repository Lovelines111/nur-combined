# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

{
  # The `lib`, `modules`, and `overlays` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  xwayland-satellite = pkgs.callPackage ./pkgs/xwayland-satellite { };
  olympus = pkgs.callPackage ./pkgs/olympus { };
  intel-dpcpp = pkgs.callPackage ./pkgs/intel-dpcpp { };
  intel-mpi = pkgs.callPackage ./pkgs/intel-mpi { };
  oneapi-mkl = pkgs.callPackage ./pkgs/oneapi-mkl { };
  lxgw-neoxihei = pkgs.callPackage ./pkgs/lxgw-neoxihei { };
  thorium = pkgs.callPackage ./pkgs/thorium { };
  apostrophe-2-6-3 = pkgs.callPackage ./pkgs/apostrophe { };
  godot4_bin = pkgs.callPackage ./pkgs/godot4_bin { };
  reqable = pkgs.callPackage ./pkgs/reqable { };
  # some-qt5-package = pkgs.libsForQt5.callPackage ./pkgs/some-qt5-package { };
  # ...
}
