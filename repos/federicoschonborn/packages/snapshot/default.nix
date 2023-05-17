{ lib
, stdenv
, fetchFromGitLab
, meson
, ninja
, pkg-config
, rustPlatform
, cairo
, desktop-file-utils
, gdk-pixbuf
, glib
, gst_all_1
, gtk4
, libadwaita
, pango
, darwin
, wayland
, wrapGAppsHook4
}:

stdenv.mkDerivation rec {
  pname = "snapshot";
  version = "44.1";

  src = fetchFromGitLab {
    domain = "gitlab.gnome.org";
    owner = "GNOME/Incubator";
    repo = "snapshot";
    rev = version;
    hash = "sha256-hrhylLfh7ntuW90DbOSvlHAz9QON9Oq2mfGaGHmr2XY=";
  };

  cargoDeps = rustPlatform.fetchCargoTarball {
    inherit src;
    name = "${pname}-${version}";
    hash = "sha256-ZPmRt50e7EZXrwjuKyWnEGtRwFxxnkl7Y5tCHVxbH80=";
  };

  nativeBuildInputs = [
    desktop-file-utils
    meson
    ninja
    pkg-config
    rustPlatform.cargoSetupHook
    rustPlatform.rust.cargo
    rustPlatform.rust.rustc
    wrapGAppsHook4
  ];

  buildInputs = [
    cairo
    gdk-pixbuf
    glib
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-bad
    gst_all_1.gstreamer
    gtk4
    libadwaita
    pango
  ] ++ lib.optionals stdenv.isDarwin [
    darwin.apple_sdk.frameworks.CoreFoundation
  ] ++ lib.optionals stdenv.isLinux [
    wayland
  ];

  meta = with lib; {
    description = "Take pictures and videos";
    homepage = "https://gitlab.gnome.org/Incubator/snapshot";
    license = licenses.gpl3Only;
  };
}
