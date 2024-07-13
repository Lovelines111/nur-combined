# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{
system ? builtins.currentSystem
, lib
, fetchurl
, installShellFiles
, stdenvNoCC
}:
let
  shaMap = {
    i686-linux = "10zbpbicrngpn3jh2y6kys773ib49dmag3s6qyxaqsl5356riwi3";
    x86_64-linux = "1gjmi0gczvjm9ffv71bhh7s49bsvxqpas1013lia0bzl0axxdxcc";
    armv6l-linux = "0ix1pfjwfx0gcxbl6mcanvvg9m88bzl19hbq0kzj3lwwvbf47xgk";
    aarch64-linux = "1i4s8ggssp0pj1lr65fxg7ppfi0a9f57y2ja92fayvipqrnsaqw3";
    x86_64-darwin = "1fvk8n0yzzw9cap3dr89k6glyc02jp0ab6vl8f0034rdfgl560dz";
    aarch64-darwin = "0n47kz0rkxmq9v7wcig4b5lknslnjqyzfmnixzlrvbp508v0ly4h";
  };

  urlMap = {
    i686-linux = "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.1.0-pro/goreleaser-pro_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.1.0-pro/goreleaser-pro_Linux_x86_64.tar.gz";
    armv6l-linux = "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.1.0-pro/goreleaser-pro_Linux_armv6.tar.gz";
    aarch64-linux = "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.1.0-pro/goreleaser-pro_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.1.0-pro/goreleaser-pro_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.1.0-pro/goreleaser-pro_Darwin_arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "goreleaser-pro";
  version = "2.1.0-pro";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./goreleaser $out/bin/goreleaser
    installManPage ./manpages/goreleaser.1.gz
    installShellCompletion ./completions/*
  '';

  system = system;

  meta = {
    description = "Deliver Go binaries as fast and easily as possible.";
    homepage = "https://goreleaser.com";
    license = lib.licenses.unfree;

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "armv6l-linux"
      "i686-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
