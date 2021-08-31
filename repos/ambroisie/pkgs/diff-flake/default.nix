{ lib, coreutils, git, gnused, makeWrapper, shellcheck, stdenvNoCC }:
stdenvNoCC.mkDerivation rec {
  pname = "diff-flake";
  version = "0.1.0";

  src = ./diff-flake;

  buildInputs = [
    makeWrapper
    shellcheck
  ];

  dontUnpack = true;

  buildPhase = ''
    shellcheck $src
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/bin/${pname}
    chmod a+x $out/bin/${pname}
  '';

  wrapperPath = lib.makeBinPath [
    coreutils
    git
    gnused
  ];

  fixupPhase = ''
    patchShebangs $out/bin/${pname}
    wrapProgram $out/bin/${pname} --prefix PATH : "${wrapperPath}"
  '';

  meta = with lib; {
    description = "Nix flake helper to visualize changes in closures";
    homepage = "https://gitea.belanyi.fr/ambroisie/nix-config";
    license = with licenses; [ mit ];
    platforms = platforms.unix;
    maintainers = with maintainers; [ ambroisie ];
  };
}
