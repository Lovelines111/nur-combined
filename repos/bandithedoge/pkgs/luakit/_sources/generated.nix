# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  luakit = {
    pname = "luakit";
    version = "2f633b319f14a8410780e98009a8d090c4735255";
    src = fetchFromGitHub {
      owner = "luakit";
      repo = "luakit";
      rev = "2f633b319f14a8410780e98009a8d090c4735255";
      fetchSubmodules = false;
      sha256 = "sha256-FVt1Mv0urbbH0KCvZ75WL+tQmsBDqbGBG3W3MhiTMHM=";
    };
    date = "2024-02-10";
  };
}
