{ config, lib, ... }:

let
  inherit (lib) mkIf;
  inherit (lib.abszero.modules) mkExternalEnableOption;
  cfg = config.abszero.themes.catppuccin;
in

{
  imports = [ ../../../../lib/modules/themes/catppuccin/catppuccin.nix ];

  options.abszero.themes.catppuccin.hyprland.enable = mkExternalEnableOption config "catppuccin hyprland theme";

  config = mkIf cfg.hyprland.enable {
    abszero.themes.catppuccin.enable = true;

    wayland.windowManager.hyprland = {
      catppuccin.enable = true;
      settings = {
        "$pink" = "ea76cb";
        "$mauve" = "8839ef";
        "$lavender" = "7287fd";
        "$text" = "4c4f69";
        "$surface0" = "9ca0b0";

        general = {
          border_size = 4;
          gaps_in = 8;
          "col.inactive_border" = "$surface0";
          "col.active_border" = "$mauve $pink 45deg";
        };

        decoration = {
          rounding = 8;
          shadow_range = 8;
          "col.shadow" = "$text";
          blur.enabled = false;
        };

        misc = {
          disable_splash_rendering = true;
          force_default_wallpaper = 0;
          animate_manual_resizes = true;
          animate_mouse_windowdragging = true;
        };

        # https://easings.net
        animation = "global, 1, 5, easeOutQuint";
        bezier = "easeOutQuint, 0.22, 1, 0.36, 1";
      };
    };

    # Remove minimize, maximize, close buttons
    gtk = {
      gtk3.extraConfig.gtk-decoration-layout = "menu:";
      gtk4.extraConfig.gtk-decoration-layout = "menu:";
    };
  };
}
