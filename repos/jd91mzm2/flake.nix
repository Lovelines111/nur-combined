{
  description = "My NUR packages";

  edition = 201909;

  outputs = { self, nixpkgs }: let
    forAllSystems = nixpkgs.lib.genAttrs [ "x86_64-linux" "x86_64-darwin" "i686-linux" "aarch64-linux" ];
    mapImport = nixpkgs.lib.mapAttrs (_: value: import value);
  in
    rec {
      # Packages
      # packages = forAllSystems (system: {

      # });

      # Library items
      lib = import ./lib { inherit (nixpkgs) lib; };

      # NixOS modules
      nixosModules = mapImport (import ./modules);

      # Home-manager modules
      hmModules = mapImport (import ./hm-modules);
    };
}
