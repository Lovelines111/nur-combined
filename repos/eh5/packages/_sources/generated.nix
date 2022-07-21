# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  geoip-dat = {
    pname = "geoip-dat";
    version = "202207202212";
    src = fetchurl {
      url = "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/download/202207202212/geoip.dat";
      sha256 = "sha256-wewOKIsMVoJX/wbiw7vvAQkXrODVqs1t8OT6bDcIw9Y=";
    };
  };
  geosite-dat = {
    pname = "geosite-dat";
    version = "202207202212";
    src = fetchurl {
      url = "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/download/202207202212/geosite.dat";
      sha256 = "sha256-haSD72nCZyM+sxoZr9D2zLa56hWLN+7DJHclVzW3h/k=";
    };
  };
  mosdns = {
    pname = "mosdns";
    version = "v4.1.8";
    src = fetchFromGitHub ({
      owner = "IrineSistiana";
      repo = "mosdns";
      rev = "v4.1.8";
      fetchSubmodules = false;
      sha256 = "sha256-i1RDyfgAOsflOIsC8+z9QoD5MujdyYB96IBpwWuQiSI=";
    });
  };
  v2ray = {
    pname = "v2ray";
    version = "v5.0.7";
    src = fetchFromGitHub ({
      owner = "v2fly";
      repo = "v2ray-core";
      rev = "v5.0.7";
      fetchSubmodules = false;
      sha256 = "sha256-jFrjtAPym3LJcsudluJNOihQJtuVcnIvJris+kmBDgo=";
    });
  };
}
