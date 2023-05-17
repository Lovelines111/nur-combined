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
, gtk4
, lcms
, libadwaita
, libgweather
, libheif
, libxml2
, pango
, darwin
, wrapGAppsHook4
}:

stdenv.mkDerivation rec {
  pname = "loupe";
  version = "44.3";

  src = fetchFromGitLab {
    domain = "gitlab.gnome.org";
    owner = "GNOME/Incubator";
    repo = "loupe";
    rev = version;
    hash = "sha256-Q6cFKQuBNu9/8h46HQN9xtevwRCjkxXXHHuJfT/QcjA=";
  };

  cargoDeps = rustPlatform.importCargoLock {
    lockFile = ./Cargo.lock;
    outputHashes = {
      "librsvg-2.56.0" = "sha256-4poP7xsoylmnKaUWuJ0tnlgEMpw9iJrM3dvt4IaFi7w=";
    };
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
    gtk4
    lcms
    libadwaita
    libgweather
    libheif
    libxml2
    pango
  ] ++ lib.optionals stdenv.isDarwin [
    darwin.apple_sdk.frameworks.CoreFoundation
  ];

  meta = with lib; {
    description = "View images";
    homepage = "https://gitlab.gnome.org/Incubator/loupe";
    changelog = "https://gitlab.gnome.org/Incubator/loupe/-/blob/${src.rev}/NEWS";
    license = licenses.gpl3Only;
    # TODO
    broken = true;
  };
}
