# This file has been generated by node2nix 1.9.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {};
  args = {
    name = "typescript";
    packageName = "typescript";
    version = "4.3.4";
    src = fetchurl { url = "https://registry.npmjs.org/typescript/-/typescript-4.3.4.tgz"; sha1 = "3f85b986945bcf31071decdd96cf8bfa65f9dcbc"; };
    buildInputs = globalBuildInputs;
    meta = {
      description = "TypeScript is a language for application scale JavaScript development";
      homepage = "https://www.typescriptlang.org/";
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
