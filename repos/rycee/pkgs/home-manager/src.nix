{ lib, version ? lib.trivial.release }:

let

  inherit (builtins) abort fetchTarball fromJSON getAttr hasAttr readFile;

  branchMap = {
    "19.03" = ./release-19.03.json;
    "19.09" = ./release-19.09.json;
    "20.03" = ./master.json;
  };

  getOrAbort = err: key: attrs:
    if hasAttr key attrs
    then getAttr key attrs
    else abort err;

  branch =
    let
      err = "No Home Manager branch available for Nixpkgs ${version}";
    in
      getOrAbort err version branchMap;

in

fetchTarball (
  {
    name = "home-manager-${version}";
  }
  // fromJSON (readFile branch)
)
