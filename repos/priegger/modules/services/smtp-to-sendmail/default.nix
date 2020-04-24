{ config, lib, pkgs, ... }:

with lib;
let
  aliases = pkgs.writeText "aliases" ''
    @ nobody
  '';

  configuration = ''
    table aliases file:${aliases}
    listen on lo
    action "local" mda "/run/wrappers/bin/sendmail root" virtual <aliases>
    match for any action "local"
  '';

  cfg = config.priegger.services.smtp-to-sendmail;
in
{
  options.priegger.services.smtp-to-sendmail = {
    enable = mkEnableOption "Enable the SMTP to sendmail bridge.";
  };

  config = mkIf cfg.enable {
    services.opensmtpd = {
      enable = true;
      addSendmailToSystemPath = mkForce false; # This would lead to an endless loop.
      extraServerArgs = [ "-v" ];
      serverConfiguration = configuration;
    };
  };
}
