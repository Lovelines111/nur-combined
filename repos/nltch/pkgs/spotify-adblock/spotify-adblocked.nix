{ fetchurl, lib, stdenv, squashfsTools, xorg, alsa-lib, makeShellWrapper, wrapGAppsHook, openssl, freetype
, glib, pango, cairo, atk, gdk-pixbuf, gtk3, cups, nspr, nss_latest, libpng, libnotify
, libgcrypt, systemd, fontconfig, dbus, expat, ffmpeg_4, curlWithGnuTls, zlib, gnome
, at-spi2-atk, at-spi2-core, libpulseaudio, libdrm, mesa, libxkbcommon
, harfbuzz, spotify, spotify-adblock, spotifywm, deviceScaleFactor ? null
}: 

let
  deps = [
    alsa-lib
    at-spi2-atk
    at-spi2-core
    atk
    cairo
    cups
    curlWithGnuTls
    dbus
    expat
    ffmpeg_4 
    fontconfig
    freetype
    gdk-pixbuf
    glib
    gtk3
    harfbuzz
    libdrm
    libgcrypt
    libnotify
    libpng
    libpulseaudio
    libxkbcommon
    mesa
    nss_latest
    pango
    stdenv.cc.cc
    systemd
    xorg.libICE
    xorg.libSM
    xorg.libX11
    xorg.libxcb
    xorg.libXcomposite
    xorg.libXcursor
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXi
    xorg.libXrandr
    xorg.libXrender
    xorg.libXScrnSaver
    xorg.libxshmfence
    xorg.libXtst
    zlib
  ];
in
  spotify.overrideAttrs (prev: {
    installPhase = ''
      runHook preInstall

      libdir=$out/lib/spotify
      mkdir -p $libdir
      mv ./usr/* $out/

      cp meta/snap.yaml $out

      # Work around Spotify referring to a specific minor version of
      # OpenSSL.

      ln -s ${lib.getLib openssl}/lib/libssl.so $libdir/libssl.so.1.0.0
      ln -s ${lib.getLib openssl}/lib/libcrypto.so $libdir/libcrypto.so.1.0.0
      ln -s ${nspr.out}/lib/libnspr4.so $libdir/libnspr4.so
      ln -s ${nspr.out}/lib/libplc4.so $libdir/libplc4.so

      ln -s ${ffmpeg_4.lib}/lib/libavcodec.so* $libdir
      ln -s ${ffmpeg_4.lib}/lib/libavformat.so* $libdir

      ln -s ${spotify-adblock}/lib/libspotifyadblock.so $libdir

      rpath="$out/share/spotify:$libdir"

      patchelf \
        --interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
        --set-rpath $rpath $out/share/spotify/spotify

      librarypath="${lib.makeLibraryPath deps}:$libdir"
      wrapProgram $out/share/spotify/spotify \
        ''${gappsWrapperArgs[@]} \
        ${lib.optionalString (deviceScaleFactor != null) ''
        --add-flags "--force-device-scale-factor=${toString deviceScaleFactor}" \
      ''} \
        --prefix LD_LIBRARY_PATH : "$librarypath" \
        --prefix LD_PRELOAD : "${spotifywm}/lib/spotifywm.so" \
        --prefix PATH : "${gnome.zenity}/bin"

      # fix Icon line in the desktop file (#48062)
      sed -i "s:^Icon=.*:Icon=spotify-client:" "$out/share/spotify/spotify.desktop"
      sed -i "s:^Name=Spotify.*:Name=Spotify-adblock:" "$out/share/spotify/spotify.desktop"


      # Desktop file
      mkdir -p "$out/share/applications/"
      #change desktop entry
      cp "$out/share/spotify/spotify.desktop" "$out/share/applications/"
      

      # Icons
      for i in 16 22 24 32 48 64 128 256 512; do
        ixi="$i"x"$i"
        mkdir -p "$out/share/icons/hicolor/$ixi/apps"
        ln -s "$out/share/spotify/icons/spotify-linux-$i.png" \
          "$out/share/icons/hicolor/$ixi/apps/spotify-client.png"
      done

      runHook postInstall
    '';
  })
  
