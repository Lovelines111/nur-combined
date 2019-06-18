{ lib, newScope, recurseIntoAttrs, dontRecurseIntoAttrs, fetchgit }:

let
  callPackage = newScope self;

  self = rec {
    packagePlugin = dontRecurseIntoAttrs (callPackage ./package-plugin.nix { });

    bobthefish = let
      inherit (lib.importJSON ./bobthefish.json) url rev sha256;
    in packagePlugin {
      name = "bobthefish-${rev}";
      src  = fetchgit { inherit url rev sha256; };
    };

    completions = recurseIntoAttrs (callPackage ./completions {});

    iterm2-integration = callPackage ./iterm2-integration.nix { };
  };
in self
