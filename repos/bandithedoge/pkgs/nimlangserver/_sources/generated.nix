# This file was generated by nvfetcher, please do not modify it manually.
{
  fetchgit,
  fetchurl,
  fetchFromGitHub,
  dockerTools,
}: {
  asynctools = {
    pname = "asynctools";
    version = "bb01d965a2ad0f08eaff6a53874f028ddbab4909";
    src = fetchgit {
      url = "https://github.com/nickysn/asynctools";
      rev = "bb01d965a2ad0f08eaff6a53874f028ddbab4909";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-iewBkGdfpallksfqviuz69ujF9gp64y6xge0qVU9lmw=";
    };
    date = "2023-11-20";
  };
  chronicles = {
    pname = "chronicles";
    version = "33761a5f77610d3f87f774244490eae43a9ac5a1";
    src = fetchgit {
      url = "https://github.com/status-im/nim-chronicles";
      rev = "33761a5f77610d3f87f774244490eae43a9ac5a1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-JISBoYV3Ljbra/VYGTeIsLdK1cmK5oQKW08if/PnHB8=";
    };
    date = "2024-05-01";
  };
  faststreams = {
    pname = "faststreams";
    version = "dbc4a95df60238157dcf286f6125188cb72f37c1";
    src = fetchgit {
      url = "https://github.com/status-im/nim-faststreams";
      rev = "dbc4a95df60238157dcf286f6125188cb72f37c1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-wLevr9wZYE5vPE5yxbp0ZwsegJx4pEQOaO3rKh8NcP8=";
    };
    date = "2024-06-26";
  };
  json-rpc = {
    pname = "json-rpc";
    version = "c8a5cbe26917e6716b1597dae2d08166f3ce789a";
    src = fetchgit {
      url = "https://github.com/yyoncho/nim-json-rpc";
      rev = "c8a5cbe26917e6716b1597dae2d08166f3ce789a";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-3VLu6GH9yGn5FJmETPnq8kzNaRYn/B8kMrw0tvQlPtA=";
    };
    date = "2023-06-20";
  };
  json_serialization = {
    pname = "json_serialization";
    version = "8a4ed98bbd0a9479df15af2fa31da38a586ea6d5";
    src = fetchgit {
      url = "https://github.com/status-im/nim-json-serialization";
      rev = "8a4ed98bbd0a9479df15af2fa31da38a586ea6d5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-rrj6aoIEB2X/HSmWl7dnOJqaNWarQ9djyaP59u1nyuQ=";
    };
    date = "2024-07-27";
  };
  nimlangserver = {
    pname = "nimlangserver";
    version = "7c6df11bd5b6d1a935eef5e98bef33caed5b64a3";
    src = fetchgit {
      url = "https://github.com/nim-lang/langserver";
      rev = "7c6df11bd5b6d1a935eef5e98bef33caed5b64a3";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-jKpOOWOtfOFwQaS6nM9oYThh+ysIC5az5IVYZV+KMvM=";
    };
    date = "2024-07-29";
  };
  serialization = {
    pname = "serialization";
    version = "298a9554a885b2df59737bb3461aac8d0d339724";
    src = fetchgit {
      url = "https://github.com/status-im/nim-serialization";
      rev = "298a9554a885b2df59737bb3461aac8d0d339724";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-z/x3VzY93SjR9RaEB8XDWdi2fHdIn3+BHYPW+dA5cOo=";
    };
    date = "2024-06-26";
  };
  stew = {
    pname = "stew";
    version = "8e0e344f0fad80fe9a667e755499ae9e8ae8baf0";
    src = fetchgit {
      url = "https://github.com/status-im/nim-stew";
      rev = "8e0e344f0fad80fe9a667e755499ae9e8ae8baf0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sparseCheckout = [];
      sha256 = "sha256-Es497TNe1OLQtJL6fT0uOAjyCg4eUwHeB+btw5JlTFc=";
    };
    date = "2024-07-28";
  };
  zevv-with = {
    pname = "zevv-with";
    version = "v0.5.0";
    src = fetchFromGitHub {
      owner = "zevv";
      repo = "with";
      rev = "v0.5.0";
      fetchSubmodules = false;
      sha256 = "sha256-3Cj31lvBHQnfMSOBnNbBdiDXo8bpLGLwfVN3heYBMJU=";
    };
  };
}
