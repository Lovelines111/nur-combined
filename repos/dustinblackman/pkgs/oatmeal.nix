# DO NOT EDIT. This file was auto generated by ../scripts/generate-pkg.sh
{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  name = "oatmeal";
  src = pkgs.fetchurl {
    url = "https://github.com/dustinblackman/oatmeal/releases/download/v0.10.0/oatmeal_0.10.0_linux_amd64.tar.gz";
    sha256 = "06nnp97vzbnflx6a56lj0nk1mmhl634q2n6sbghsnqih7rv48ww4";
  };
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p tmp $out/bin $out/share/doc/oatmeal/copyright
    tar -zxf $src -C tmp

    mv tmp/oatmeal $out/bin/
    mv tmp/THIRDPARTY.html $out/share/doc/oatmeal/copyright/
    mv tmp/LICENSE $out/share/doc/oatmeal/copyright/

    patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" $out/bin/oatmeal
  '';
}
