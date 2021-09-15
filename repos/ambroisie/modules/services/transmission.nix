# Small seedbox setup.
#
# Inspired by [1]
#
# [1]: https://github.com/delroth/infra.delroth.net/blob/master/roles/seedbox.nix
{ config, lib, ... }:
let
  cfg = config.my.services.transmission;
in
{
  options.my.services.transmission = with lib; {
    enable = mkEnableOption "Transmission torrent client";

    username = mkOption {
      type = types.str;
      default = "Ambroisie";
      example = "username";
      description = "Name of the transmission RPC user";
    };

    password = mkOption {
      type = types.str;
      example = "password";
      description = "Password of the transmission RPC user";
    };

    downloadBase = mkOption {
      type = types.str;
      default = "/data/downloads";
      example = "/var/lib/transmission/download";
      description = "Download base directory";
    };

    port = mkOption {
      type = types.port;
      default = 9091;
      example = 8080;
      description = "Internal port for webui";
    };

    peerPort = mkOption {
      type = types.port;
      default = 30251;
      example = 32323;
      description = "Peering port";
    };
  };

  config = lib.mkIf cfg.enable {
    services.transmission = {
      enable = true;
      group = "media";

      downloadDirPermissions = "775";

      settings = {
        download-dir = "${cfg.downloadBase}/complete";
        incomplete-dir = "${cfg.downloadBase}/incomplete";

        peer-port = cfg.peerPort;

        rpc-enabled = true;
        rpc-port = cfg.port;
        rpc-authentication-required = true;

        rpc-username = cfg.username;
        rpc-password = cfg.password; # Insecure, but I don't care.

        # Proxied behind Nginx.
        rpc-whitelist-enabled = true;
        rpc-whitelist = "127.0.0.1";
      };
    };

    # Set-up media group
    users.groups.media = { };

    # Default transmission webui, I prefer combustion but its development
    # seems to have stalled
    my.services.nginx.virtualHosts = [
      {
        subdomain = "transmission";
        inherit (cfg) port;
      }
    ];

    networking.firewall = {
      allowedTCPPorts = [ cfg.peerPort ];
      allowedUDPPorts = [ cfg.peerPort ];
    };
  };
}
