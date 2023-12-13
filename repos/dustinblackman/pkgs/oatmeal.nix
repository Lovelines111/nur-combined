# DO NOT EDIT. This file was auto generated by ../scripts/generate-pkg.sh
{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "oatmeal";
  src = pkgs.fetchurl {
    url = "https://github.com/dustinblackman/oatmeal/releases/download/v0.9.0/oatmeal_0.9.0_linux_amd64.tar.gz";
    sha256 = "1gd99dar9076dsjnmdvpd6lwv5fbz9lqkh2h4rjam6qcw0xnnjqa";
  };
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    tar -zxf $src -C $out/bin/ oatmeal
  '';
}

