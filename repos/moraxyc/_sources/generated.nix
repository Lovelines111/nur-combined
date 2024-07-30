# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  alist = {
    pname = "alist";
    version = "v3.36.0";
    src = fetchFromGitHub {
      owner = "alist-org";
      repo = "alist";
      rev = "v3.36.0";
      fetchSubmodules = false;
      sha256 = "sha256-l0/DS7ZSuto8QHvSf1ae7wy/a7yqp05koWpb+ExvJJk=";
    };
  };
  cyrus-imapd = {
    pname = "cyrus-imapd";
    version = "cyrus-imapd-3.8.4";
    src = fetchFromGitHub {
      owner = "cyrusimap";
      repo = "cyrus-imapd";
      rev = "cyrus-imapd-3.8.4";
      fetchSubmodules = false;
      sha256 = "sha256-LHFyA50sGA9T0589X8Hp7hfzTkCOtU/6UcA9fRSypSI=";
    };
  };
}
