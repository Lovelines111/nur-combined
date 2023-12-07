# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{
system ? builtins.currentSystem
, pkgs
, lib
, fetchurl
, installShellFiles
}:
let
  shaMap = {
    i686-linux = "0307j4px8pby8xiw7j18li0jiv93qjaapmflxpd3cj8rdbh9sb02";
    x86_64-linux = "1369lli0jvfx0bdv2hmh9m8nar97mdczgk9sw1mdrzblbc1mjr96";
    armv7l-linux = "0ka9b8fc682x647zkqm0mlwmj9fcqczh1jhf4v2iiwzgasfh6sg4";
    aarch64-linux = "062076941wq0cw1x1dj31m43dm5wx7adspq8ll86cj2krbkp6gsv";
    x86_64-darwin = "1ayhlpca6gmgnl0z8nbpva2jxkag6m590m8i5l36ghq69dwv5g7l";
    aarch64-darwin = "0660hvir9c93f4bhw2vj4jzpr8ap3p44w71xfcp9ypvyg4r84s02";
  };

  urlMap = {
    i686-linux = "https://github.com/charmbracelet/soft-serve/releases/download/v0.7.4/soft-serve_0.7.4_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/charmbracelet/soft-serve/releases/download/v0.7.4/soft-serve_0.7.4_Linux_x86_64.tar.gz";
    armv7l-linux = "https://github.com/charmbracelet/soft-serve/releases/download/v0.7.4/soft-serve_0.7.4_Linux_arm.tar.gz";
    aarch64-linux = "https://github.com/charmbracelet/soft-serve/releases/download/v0.7.4/soft-serve_0.7.4_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/charmbracelet/soft-serve/releases/download/v0.7.4/soft-serve_0.7.4_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/charmbracelet/soft-serve/releases/download/v0.7.4/soft-serve_0.7.4_Darwin_arm64.tar.gz";
  };
in
pkgs.stdenv.mkDerivation {
  pname = "soft-serve";
  version = "0.7.4";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./soft $out/bin/soft
    installManPage ./manpages/soft-serve.1.gz
    installShellCompletion ./completions/*
  '';

  system = system;

  meta = {
    description = "A tasty, self-hostable Git server for the command line🍦";
    homepage = "https://charm.sh/";
    license = lib.licenses.mit;

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "armv7l-linux"
      "i686-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
