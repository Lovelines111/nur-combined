{ config, lib, pkgs, ... }:
let
  cfg = config.my.home.mail;

  mkAddress = address: domain: "${address}@${domain}";

  mkConfig = { domain, address, passName, aliases ? [ ], primary ? false }: {
    realName = lib.mkDefault "Bruno BELANYI";
    userName = lib.mkDefault (mkAddress address domain);
    passwordCommand =
      lib.mkDefault [ "${pkgs.ambroisie.bw-pass}/bin/bw-pass" "Mail" passName ];

    address = mkAddress address domain;
    aliases = builtins.map (lib.flip mkAddress domain) aliases;

    inherit primary;

    msmtp = {
      enable = cfg.msmtp.enable;
    };
  };

  migaduConfig = {
    imap = {
      host = "imap.migadu.com";
      port = 993;
      tls = {
        enable = true;
      };
    };
    smtp = {
      host = "smtp.migadu.com";
      port = 465;
      tls = {
        enable = true;
      };
    };
  };

  gmailConfig = {
    flavor = "gmail.com";
    folders = {
      drafts = "[Gmail]/Drafts";
      sent = "[Gmail]/Sent Mail";
      trash = "[Gmail]/Trash";
    };
  };

  office365Config = {
    imap = {
      host = "outlook.office365.com";
      port = 993;
      tls = {
        enable = true;
      };
    };
    smtp = {
      host = "outlook.office365.com";
      port = 587;
      tls = {
        enable = true;
        useStartTls = true;
      };
    };
  };
in
{
  config.accounts.email.accounts = {
    personal = lib.mkMerge [
      # Common configuraton
      (mkConfig {
        domain = "belanyi.fr";
        address = "bruno";
        passName = "Migadu";
        aliases = [ "admin" "postmaster" ];
        primary = true; # This is my primary email
      })
      migaduConfig
    ];

    gmail = lib.mkMerge [
      # Common configuraton
      (mkConfig {
        domain = "gmail.com";
        address = "brunobelanyi";
        passName = "GMail";
      })
      gmailConfig
    ];

    epita = lib.mkMerge [
      # Common configuration
      (mkConfig {
        domain = "epita.fr";
        address = "bruno.belanyi";
        passName = "EPITA";
      })
      office365Config
    ];
  };
}
