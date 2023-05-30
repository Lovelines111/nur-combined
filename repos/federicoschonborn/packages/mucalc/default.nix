{ lib
, stdenv
, fetchzip
, cmake
, muparser
, ninja
, readline
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "mucalc";
  version = "2.1";

  src = fetchzip {
    url = "https://marlam.de/mucalc/releases/mucalc-${finalAttrs.version}.tar.gz";
    hash = "sha256-qXqe9U7y3YrzSeJKgW53vkdNpPcAmxysxzT7SIlSzMo=";
  };

  nativeBuildInputs = [
    cmake
    ninja
  ];

  buildInputs = [
    muparser
    readline
  ];

  meta = with lib; {
    description = "A convenient calculator for the command line";
    homepage = "https://marlam.de/mucalc/";
    downloadPage = "https://marlam.de/mucalc/download/";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ federicoschonborn ];
  };
})
