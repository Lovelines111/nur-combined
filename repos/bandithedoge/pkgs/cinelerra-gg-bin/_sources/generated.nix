# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  cinelerra-gg = {
    pname = "cinelerra-gg";
    version = "20240531";
    src = fetchurl {
      url = "https://cinelerra-gg.org/download/images/CinGG-20240531-x86_64.AppImage";
      sha256 = "sha256-TtYEdI+Il1+yRCA4ER5M+LAn2K8VvLmgqykN7Vsm5uU=";
    };
  };
}
