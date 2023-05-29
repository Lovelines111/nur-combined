{ lib
, stdenv
, fetchFromGitLab
, blueprint-compiler
, desktop-file-utils
, gettext
, gtk4
, json-glib
, libadwaita
, libgee
, libportal-gtk4
, libsoup_3
, meson
, ninja
, pkg-config
, vala
, wrapGAppsHook4
}:

stdenv.mkDerivation rec {
  pname = "damask";
  version = "0.2.0";

  src = fetchFromGitLab {
    domain = "gitlab.gnome.org";
    owner = "subpop";
    repo = "damask";
    rev = "v${version}";
    hash = "sha256-wSUdisdYvEw/KgLg//6e0JRW+IPHcB/hXjOHpx/XQHo=";
  };

  nativeBuildInputs = [
    blueprint-compiler
    desktop-file-utils
    gettext
    meson
    ninja
    pkg-config
    vala
    wrapGAppsHook4
  ];

  buildInputs = [
    gtk4
    json-glib
    libadwaita
    libgee
    libportal-gtk4
    libsoup_3
  ];

  meta = with lib; {
    description = "Automatically set wallpaper images from Internet sources";
    homepage = "https://gitlab.gnome.org/subpop/damask";
    license = licenses.gpl3Only;
  };
}
