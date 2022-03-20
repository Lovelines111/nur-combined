{ stdenv
, fetchurl
, p7zip
, ...
}:

stdenv.mkDerivation rec {
  pname = "hesuvi";
  version = "2.0.0.1";
  src = fetchurl {
    url = "https://sourceforge.net/projects/hesuvi/files/HeSuVi_${version}.exe/download";
    sha256 = "1fh1lqkv992xjglwkp3b544ai552pyjbmgfm9yp8fylg9mqp85x3";
  };

  nativeBuildInputs = [ p7zip ];

  unpackPhase = ''
    7z x $src
  '';
  installPhase = ''
    cp -r HeSuVi/hrir $out
  '';
}
