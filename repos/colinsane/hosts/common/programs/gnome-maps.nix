# SUPPORT:
# - irc: #gnome-maps on irc.gimp.org
# - Matrix: #gnome-maps:gnome.org  (unclear if bridged to IRC)
#
# INTEGRATIONS:
# - uses https://graphhopper.com for routing
#   - <https://github.com/graphhopper/graphhopper>  (not packaged for Nix)
# - uses https://tile.openstreetmap.org for tiles
# - uses https://overpass-api.de for ... ?
# TIPS:
# - use "Northwest" instead of "NW", and "Street" instead of "St", etc.
#   otherwise, it might not find your destination!
#
# TODO:
# - get gnome-maps to access location services via the xdg-desktop-portal.
#   with it not using the portal, it can't open links via the web browser.
#   additionally, that prevents OpenStreetMap sign-in.
#   even temporarily enabling the portal for OSM doesn't work *after* the portal has been disabled -- because then gnome-maps can't access its passwords (?)
{ pkgs, ... }:
{
  sane.programs."gnome.gnome-maps" = {
    packageUnwrapped = pkgs.rmDbusServicesInPlace (pkgs.gnome.gnome-maps.overrideAttrs (base: {
      # default .desktop file is trying to do some dbus launch (?) which fails even *if* i install `gapplication` (glib.bin)
      postPatch = (base.postPatch or "") + ''
        substituteInPlace data/org.gnome.Maps.desktop.in.in \
          --replace-fail 'Exec=gapplication launch @app-id@ %U' 'Exec=gnome-maps %U'
      '';
    }));
    suggestedPrograms = [
      "geoclue2"
    ];

    sandbox.wrapperType = "inplace";  #< /share directory contains Gir info which references libgnome-maps.so by path
    sandbox.method = "bwrap";
    sandbox.whitelistDri = true;  # for perf
    sandbox.whitelistDbus = [
      "system"  # system is required for non-portal location services
      "user"  #< not sure if "user" is necessary?
    ];
    sandbox.whitelistWayland = true;
    sandbox.net = "clearnet";
    sandbox.usePortal = false;  # TODO: set up portal-based location services

    persist.byStore.plaintext = [ ".cache/shumate" ];
    persist.byStore.private = [
      ({ path = ".local/share/maps-places.json"; type = "file"; })
    ];
  };
}
