{ pkgs }:

rec {
  # Alacritty with the unmerged ligature patches applied.
  alacritty-ligatures = (pkgs.alacritty.override {
    inherit (pkgs.rustPackages_1_45) rustPlatform;
  }).overrideAttrs (oldAttrs: rec {
    pname = "${oldAttrs.pname}-ligatures";
    version = "0.7.0.20201204";

    src = pkgs.fetchFromGitHub {
      owner = "zenixls2";
      repo = "alacritty";
      fetchSubmodules = true;
      rev = "9adfaeb01bffb902eb305ed9de376d2032ba994e";
      sha256 = "0lvynwgjrcrpvywpmqniw27268m0m9lw0lpwnfrbhipyp24c7pnx";
    };

    cargoDeps = oldAttrs.cargoDeps.overrideAttrs (pkgs.lib.const {
      name = "${pname}-${version}-vendor.tar.gz";
      inherit src;
      outputHash = "1jjyqxpqk5k3kdjb4hmff562j2jncjmpq6wyyi7i3f3v1qc3xsb9";
    });

    ligatureInputs = [
      pkgs.fontconfig
      pkgs.freetype
      pkgs.libglvnd
      pkgs.stdenv.cc.cc.lib
      pkgs.xlibs.libxcb
    ];

    buildInputs = (oldAttrs.buildInputs or []) ++ ligatureInputs;

    # HACK: One of the ligature libraries required the C++ stdlib at runtime,
    # and I can't work out a better way to push it to the RPATH.
    postInstall = pkgs.lib.optional (!pkgs.stdenv.isDarwin) ''
      patchelf \
        --set-rpath ${pkgs.lib.makeLibraryPath ligatureInputs}:"$(patchelf --show-rpath $out/bin/alacritty)" \
        $out/bin/alacritty
    '';
  });

  amdgpu-fan = pkgs.callPackage ../tools/misc/amdgpu-fan { };

  goModules = pkgs.recurseIntoAttrs rec {
    qt = pkgs.libsForQt512.callPackage ../development/go-modules/qt { };
  };

  # A functional Jetbrains IDE-with-plugins package set.
  jetbrains = pkgs.dontRecurseIntoAttrs rec {
    jetbrainsPluginsFor = variant: import ../top-level/jetbrains-plugins.nix {
      inherit (pkgs) lib newScope stdenv fetchzip;
      inherit variant;
    };

    pluginBuild = jetbrainsPlatforms: pkgs.callPackage ../build-support/jetbrains/plugin.nix {
      inherit jetbrains jetbrainsPlatforms;
    };

    clionPlugins = pkgs.dontRecurseIntoAttrs (jetbrainsPluginsFor pkgs.jetbrains.clion);
    ideaCommunityPlugins = pkgs.dontRecurseIntoAttrs (jetbrainsPluginsFor pkgs.jetbrains.idea-community);
    ideaUltimatePlugins = pkgs.dontRecurseIntoAttrs (jetbrainsPluginsFor pkgs.jetbrains.idea-ultimate);

    clionWithPlugins = clionPlugins.jetbrainsWithPlugins;
    ideaCommunityWithPlugins = ideaCommunityPlugins.jetbrainsWithPlugins;
    ideaUltimateWithPlugins = ideaUltimatePlugins.jetbrainsWithPlugins;
  };

  libhl = pkgs.callPackage ../development/libraries/libhl { };

  mopidy-subidy = pkgs.callPackage ../applications/audio/mopidy/subidy.nix {
    python3Packages = pkgs.python3Packages // python3Packages;
  };

  pam_gnupg = pkgs.callPackage ../os-specific/linux/pam_gnupg { };

  picom-animations = pkgs.picom.overrideAttrs (oldAttrs: {
    pname = "picom-animations";
    src = pkgs.fetchFromGitHub {
      owner = "jonaburg";
      repo = "picom";
      rev = "d718c94";
      sha256 = "165mc53ryyxn2ybkhikmk51ay3k18mvlsym3am3mgr8cpivmf2rm";
    };
  });

  polybar = pkgs.polybar.overrideAttrs (oldAttrs: {
    # Enables an extra button in formatting, indirectly allowing the use of
    # the mouse forward and backward buttons.
    patches = (oldAttrs.patches or [ ]) ++ [ ../applications/misc/polybar/9button.patch ];
  });

  python2Packages =
    let
      fixVersion =
        { package
        , version
        , sha256
        , extra ? (oldAttrs: { })
        }: package.overrideAttrs (oldAttrs: rec {
          inherit version;
          src = pkgs.python2Packages.fetchPypi {
            inherit (oldAttrs) pname;
            inherit version sha256;
          };
        } // extra oldAttrs);
    in
    pkgs.recurseIntoAttrs rec {
      colorama_0_3_3 = fixVersion {
        package = pkgs.python2Packages.colorama;
        version = "0.3.3";
        sha256 = "1716z9pq1r5ys3nkg7wdrb3h2f9rmd0zdxpxzmx3bgwgf6xg48gb";
      };

      mutagen_1_30 = fixVersion {
        package = pkgs.python2Packages.mutagen;
        version = "1.30";
        sha256 = "0kv2gjnzbj1w0bswmxm7wi05x6ypi7jk52s0lb8gw8s459j41gyd";
        extra = oldAttrs: {
          patches = [ ];
        };
      };

      pyspotify_2_0_5 = fixVersion {
        package = pkgs.python2Packages.pyspotify;
        version = "2.0.5";
        sha256 = "0y16c024rrvbvfdqj1n0k4b25b1nbza3i7kspg5b0ci2src1rm7v";
      };

      overlay = {
        colorama = colorama_0_3_3;
        mutagen = mutagen_1_30;
        pyspotify = pyspotify_2_0_5;
      };
    };

  python3Packages = pkgs.recurseIntoAttrs {
    py-sonic = pkgs.python3.pkgs.callPackage ../development/python-modules/py-sonic { };
  };

  # The one in Nixpkgs still extracts the pre-built Debian package instead
  # of building from source.
  protonmailBridgePackages = pkgs.libsForQt512.callPackage ../applications/networking/protonmail-bridge {
    inherit goModules;
  };
  protonmail-bridge = protonmailBridgePackages.protonmail-bridge;
  protonmail-bridge-headless = protonmailBridgePackages.protonmail-bridge-headless;

  radeon-profile-daemon = pkgs.libsForQt5.callPackage ../tools/misc/radeon-profile-daemon { };

  samrewritten = pkgs.callPackage ../tools/misc/samrewritten { };

  spotify-ripper = pkgs.callPackage ../tools/misc/spotify-ripper {
    # NOTE: Not available in 20.03. Specifying it this way lets me cheat the
    # build auto-failing on 20.03 because of the attribute not existing.
    inherit (pkgs) fdk-aac-encoder;
    python2Packages = pkgs.python2Packages // python2Packages.overlay;
  };

  zsh-z = pkgs.callPackage ../shells/zsh/zsh-z { };
}
