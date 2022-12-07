# DO NOT EDIT. This file was auto generated by ../scripts/generate-pkg.sh
{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "cf-alias";
  src = pkgs.fetchurl {
    url = "https://github.com/dustinblackman/cf-alias/releases/download/v0.1.9/cf-alias_0.1.9_linux_amd64.tar.gz";
    sha256 = "0w2rf4zkgz9zk638xfrvlrj863hmww228l0kkzkv0r92rwf24vs4";
  };
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    tar -zxf $src -C $out/bin/ cf-alias
  '';
}

