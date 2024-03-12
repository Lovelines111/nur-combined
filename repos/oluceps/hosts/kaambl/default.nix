{ withSystem, self, inputs, ... }:
{
  flake.nixosConfigurations.kaambl = withSystem "x86_64-linux" (_ctx@{ config, inputs', ... }:
    let inherit (self) lib; in lib.nixosSystem {
      specialArgs = {
        inherit lib self inputs inputs';
        inherit (config) packages;
        inherit (lib) data;
        user = "elen";
      };
      modules = lib.sharedModules ++ [
        {
          nixpkgs = {
            config = {
              allowUnfree = true;
            };
            hostPlatform = "x86_64-linux";
            overlays =
              (lib.genOverlays [
                "self"
                "fenix"
                "berberman"
                "EHfive"
                "nuenv"
                "android-nixpkgs"
                "agenix-rekey"
              ]) ++ (import ../../overlays.nix inputs);
          };
        }
        ./hardware.nix
        ./network.nix
        ./rekey.nix
        ./spec.nix
        ../persist.nix
        ../secureboot.nix
        ../../services/misc.nix
        inputs.home-manager.nixosModules.default
        ../../home
        ../../boot.nix
        ../../age.nix
        ../../packages.nix
        ../../misc.nix
        ../../users.nix
        ../../sysvars.nix
        inputs.niri.nixosModules.niri
      ]
        ++
        [
          inputs.aagl.nixosModules.default
          inputs.disko.nixosModules.default
          inputs.tg-online-keeper.nixosModules.default
          # inputs.factorio-manager.nixosModules.default
        ];
    });
}
