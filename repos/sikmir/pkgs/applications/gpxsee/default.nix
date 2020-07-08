{ stdenv
, mkDerivation
, lib
, qmake
, qtbase
, qttools
, qttranslations
, sources
, substituteAll
, withI18n ? true
}:

mkDerivation {
  pname = "gpxsee";
  version = lib.substring 0 7 sources.gpxsee.rev;
  src = sources.gpxsee;

  patches = (substituteAll {
    # See https://github.com/NixOS/nixpkgs/issues/86054
    src = ./fix-qttranslations-path.patch;
    inherit qttranslations;
  });

  nativeBuildInputs = [ qmake ] ++ (lib.optional withI18n qttools);
  buildInputs = [ qtbase ];

  preConfigure = lib.optionalString withI18n ''
    lrelease gpxsee.pro
  '';

  postInstall = lib.optionalString stdenv.isDarwin ''
    mkdir -p $out/Applications
    mv GPXSee.app $out/Applications
    wrapQtApp $out/Applications/GPXSee.app/Contents/MacOS/GPXSee
    mkdir -p $out/bin
    ln -s $out/Applications/GPXSee.app/Contents/MacOS/GPXSee $out/bin/gpxsee
  '';

  enableParallelBuilding = true;

  meta = with lib; {
    inherit (sources.gpxsee) description homepage;
    license = licenses.gpl3;
    maintainers = with maintainers; [ sikmir ];
    platforms = with platforms; linux ++ darwin;
  };
}
