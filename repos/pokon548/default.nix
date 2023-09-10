# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  todoist-electron = pkgs.callPackage ./pkgs/todoist-electron { };
  v2raya = pkgs.callPackage ./pkgs/v2raya { };
  nekoray-bin = pkgs.callPackage ./pkgs/nekoray-bin { };

  tencent-qq-electron = pkgs.callPackage ./pkgs/tencent-qq-electron { };
  tencent-qq-electron-bwrap =
    pkgs.callPackage ./pkgs/tencent-qq-electron-bwrap { };

  chengla-electron = pkgs.callPackage ./pkgs/chengla-electron { };
  daoniu-electron = pkgs.callPackage ./pkgs/daoniu-electron { };

  fcitx5-pinyin-custompinyindict = pkgs.callPackage ./pkgs/fcitx5-pinyin-custompinyindict { };

  rustdesk-bin = pkgs.callPackage ./pkgs/rustdesk-bin { };

  zulu = pkgs.callPackage ./pkgs/zulu { };
  zulu19 = pkgs.callPackage ./pkgs/zulu/19.nix { };
  zulu17 = pkgs.callPackage ./pkgs/zulu/17.nix { };
  zulu15 = pkgs.callPackage ./pkgs/zulu/15.nix { };
  zulu13 = pkgs.callPackage ./pkgs/zulu/13.nix { };
  zulu11 = pkgs.callPackage ./pkgs/zulu/11.nix { };
  zulu8 = pkgs.callPackage ./pkgs/zulu/8.nix { };

  plasma5-wallpapers-dynamic =
    pkgs.libsForQt5.callPackage ./pkgs/plasma5-wallpapers-dynamic { };
  plasma5-applets-window-appmenu =
    pkgs.libsForQt5.callPackage ./pkgs/plasma5-applets-window-appmenu { };
  # some-qt5-package = pkgs.libsForQt5.callPackage ./pkgs/some-qt5-package { };
  # ...
}
