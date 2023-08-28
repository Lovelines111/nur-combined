{
  description = "My personal NUR repository";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    { self
    , nixpkgs
    ,
    }:
    let
      inherit (nixpkgs.lib) genAttrs getName systems;

      forAllSystems = f: genAttrs systems.flakeExposed (system: f (import nixpkgs {
        inherit system;
        config.allowUnfreePredicate = p: builtins.elem (getName p) [
          "sonic-2013"
          "sonic-cd"
        ];
      }));
    in
    {
      legacyPackages = forAllSystems (pkgs: import ./. { inherit pkgs; });
      packages = forAllSystems (pkgs: nixpkgs.lib.filterAttrs (_: nixpkgs.lib.isDerivation) self.legacyPackages.${pkgs.system});
      formatter = forAllSystems (pkgs: pkgs.nixpkgs-fmt);
    };
}
