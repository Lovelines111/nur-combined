# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  vgmtrans = {
    pname = "vgmtrans";
    version = "7cf66dddc228dda73e4e13487e087a2925d8d461";
    src = fetchgit {
      url = "https://github.com/vgmtrans/vgmtrans";
      rev = "7cf66dddc228dda73e4e13487e087a2925d8d461";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-vWS5y0MhKbmRq5qROpfZaWWJYs6XzhMdqIW4ta6IxVU=";
    };
    date = "2024-08-21";
  };
}
