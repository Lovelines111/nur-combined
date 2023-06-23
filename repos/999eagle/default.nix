# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage
{pkgs ? import <nixpkgs> {}}: {
  git-credential-manager = pkgs.callPackage ./pkgs/git-credential-manager {};
  github-linguist = pkgs.callPackage ./pkgs/github-linguist {};
  millipixels = pkgs.callPackage ./pkgs/millipixels {};
  pkcs11-provider = pkgs.callPackage ./pkgs/pkcs11-provider.nix {};
  sea-orm-cli = pkgs.callPackage ./pkgs/sea-orm-cli {};
  swayaudioidleinhibit = pkgs.callPackage ./pkgs/swayaudioidleinhibit.nix {};

  # override because of https://github.com/Alexays/Waybar/issues/1945
  # was fixed in https://github.com/Alexays/Waybar/commit/02b3c125a111f879d6de3aa1090e1a9900632b20
  waybar = pkgs.waybar.overrideAttrs (old: rec {
    version = "unstable-2023-04-17";
    src = pkgs.fetchFromGitHub {
      owner = "Alexays";
      repo = "Waybar";
      rev = "a9a222346990b46e4c928a1c57cf0678120721de";
      sha256 = "0aa5062zypa57iibnd3hbs638vrm5wn6lnqrycshc7ac1xay2i1s";
    };
    mesonFlags = old.mesonFlags ++ ["-Dcava=disabled"];
  });
}
