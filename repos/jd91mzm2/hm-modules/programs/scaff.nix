{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.programs.scaff;
in
{
  options = {
    programs.scaff = {
      enable = mkEnableOption "scaff";
      package = mkOption {
        type = types.package;
        default = pkgs.callPackage (builtins.fetchTarball https://gitlab.com/jD91mZM2/scaff/-/archive/6da3176029d167e48c2854ff93987451eb564407.tar.gz) {};
        description = ''
          Which scaff package to use. Defaults to the latest one,
          because as I'm writing this no scaff version is in nixpkgs.
        '';
      };

      imports = mkOption {
        type = types.attrsOf (types.coercedTo types.path toString types.str);
        default = {};
        example = literalExample ''
        {
          my-local-template                  = ./my-local-template.tar.gz;
          my-remote-template                 = "https://example.org/my-remote-template.tar.gz";
          my-remote-template-built-using-nix = builtins.fetchurl https://example.org/my-remote-template-built-using-nix.tar.gz;
        }
        '';
        description = ''
          The list of imported tarballs, which will be available by using `scaff <alias>`
        '';
      };
    };
  };
  config = mkIf cfg.enable {
    home.packages = [ cfg.package ];

    home.file.".config/scaff/config.toml".text = ''
      [imports]
      ${builtins.concatStringsSep "\n" (mapAttrsToList (name: url: "${name} = \"${toString url}\"") cfg.imports)}
    '';
  };
}
