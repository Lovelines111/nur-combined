{ config, lib, ... }:

let
  inherit (lib) mkEnableOption mkIf assertMsg;
  cfg = config.abszero.services.hypridle;
in

{
  options.abszero.services.hypridle.enable = mkEnableOption "wayland idle daemon";

  # https://wiki.hyprland.org/Hypr-Ecosystem/hypridle
  config = mkIf cfg.enable {
    assertions = [
      (assertMsg (
        config.abszero.programs.hyprlock.enable == true
      ) "hypridle requires hyprlock to be enabled")
    ];
    services.hypridle = {
      enable = true;
      settings = {
        general = {
          lock_cmd = "pidof hyprlock || hyprlock";
          before_sleep_cmd = "loginctl lock-session";
          # To avoid having to press a key twice to turn on the display
          after_sleep_cmd = "hyprctl dispatch dpms on";
        };
        listener = [
          {
            timeout = 300; # 5min
            on-timeout = "loginctl lock-session";
          }
          {
            timeout = 360; # 6min
            on-timeout = "hyprctl dispatch dpms off";
            on-resume = "hyprctl dispatch dpms on";
          }
        ];
      };
    };
  };
}
