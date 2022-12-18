{
  inputs = {
    # main nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils-plus.url = "github:gytis-ivaskevicius/flake-utils-plus";

    # extra channels for checks
    nixos-stable.url = "github:nixos/nixpkgs/nixos-22.11";
  };

  outputs = { self, nixpkgs, flake-utils-plus, ... }@inputs:
    let
      utils = flake-utils-plus.lib;
      inherit (nixpkgs) lib;
      selfLib = self.lib;
      inherit (selfLib) makePackages makeApps appNames;
      makePackages' = prev:
        let
          packages = makePackages prev ./pkgs { };
        in
        packages // {
          devShellPackages = makePackages prev ./shell {
            inherit packages selfLib;
          };
        };
    in
    utils.mkFlake
      {
        inherit self inputs;

        sharedOverlays = builtins.attrValues (self.overlays);
        channelsConfig = {
          allowUnfree = true;
          allowAliases = false;
        };
        lib = import ./lib { inherit (nixpkgs) lib; };
        overlays = import ./overlays // {
          linyinfeng = final: prev: {
            linyinfeng = lib.recurseIntoAttrs (makePackages' prev);
          };
          singleRepoNur = final: prev: {
            nur = prev.lib.recursiveUpdate (prev.nur or { })
              (lib.recurseIntoAttrs {
                repos = lib.recurseIntoAttrs {
                  linyinfeng = lib.recurseIntoAttrs (makePackages' prev);
                };
              });
          };
        };

        outputsBuilder = channels:
          let
            mainChannel = channels.nixpkgs;
          in
          rec {
            packages = utils.flattenTree (mainChannel.linyinfeng);
            apps = makeApps packages appNames;
            devShells.default = mainChannel.linyinfeng.devShellPackages.shell;
            checks = utils.flattenTree (lib.mapAttrs (name: c: c.linyinfeng) channels);
          };

        nixosModules = import ./modules;
      };
}
