# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  eupnea-scripts = {
    pname = "eupnea-scripts";
    version = "bcb33806ba08552522e102494494b9b592b95d1d";
    src = fetchFromGitHub {
      owner = "eupnea-linux";
      repo = "audio-scripts";
      rev = "bcb33806ba08552522e102494494b9b592b95d1d";
      fetchSubmodules = false;
      sha256 = "sha256-uBjiu94gE23we5c7F+H5VdJ5FKPneiD/lc+TWPylG4c=";
    };
    date = "2023-04-29";
  };
}
