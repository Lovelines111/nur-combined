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
    x86_64-linux = "19zkh0ppdjfm4502zbzwmd2abqayxmc2va7fsxk0748fzw15k9jc";
    armv7l-linux = "1dr3s2vzr6shcrll24z07hlc0c3x2qgcki2n0r6n3qm2jfk9wib9";
    aarch64-linux = "0hybmnv854gas64qls8h2qqb19mi8nd9frh55ppylr7hplsvav6s";
    x86_64-darwin = "0saln5k5y5rlr49adggr5x5bgs80pwz4p2xrjpaxf6x5lggc8irx";
    aarch64-darwin = "0p5cld0n6a2cm5rki3hd0nxhz0pc8lvcmadjza8i5igipw2gnkwh";
  };

  urlMap = {
    x86_64-linux = "https://dl.dagger.io/dagger/releases/0.12.5/dagger_v0.12.5_linux_amd64.tar.gz";
    armv7l-linux = "https://dl.dagger.io/dagger/releases/0.12.5/dagger_v0.12.5_linux_armv7.tar.gz";
    aarch64-linux = "https://dl.dagger.io/dagger/releases/0.12.5/dagger_v0.12.5_linux_arm64.tar.gz";
    x86_64-darwin = "https://dl.dagger.io/dagger/releases/0.12.5/dagger_v0.12.5_darwin_amd64.tar.gz";
    aarch64-darwin = "https://dl.dagger.io/dagger/releases/0.12.5/dagger_v0.12.5_darwin_arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "dagger";
  version = "0.12.5";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./dagger $out/bin/dagger
  '';
  postInstall = ''
    installShellCompletion --cmd dagger \
    --bash <($out/bin/dagger completion bash) \
    --fish <($out/bin/dagger completion fish) \
    --zsh <($out/bin/dagger completion zsh)
  '';

  system = system;

  meta = {
    description = "Dagger is an integrated platform to orchestrate the delivery of applications";
    homepage = "https://dagger.io";
    license = lib.licenses.asl20;

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "armv7l-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
