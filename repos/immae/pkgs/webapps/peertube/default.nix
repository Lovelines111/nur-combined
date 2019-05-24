{ ldap ? false
, lib, stdenv, fetchzip, youtube-dl, fetchurl, mylibs, python, nodejs, nodePackages }:
let
  nodeHeaders = fetchurl {
    url = "https://nodejs.org/download/release/v${nodejs.version}/node-v${nodejs.version}-headers.tar.gz";
    sha256 = "16f20ya3ys6w5w6y6l4536f7jrgk4gz46bf71w1r1xxb26a54m32";
  };
  patchedPackages = stdenv.mkDerivation (mylibs.fetchedGithub ./peertube.json // rec {
    patches = if ldap then [ ./ldap.patch ././yarn_fix_bluebird_ldap.patch ] else [ ./yarn_fix_bluebird.patch ];
    installPhase = ''
      mkdir $out
      cp package.json yarn.lock $out/
      '';
  });
  # if yarn complains about
  #   TypeError: Cannot read property 'lang' of undefined yarn
  #   make sure that all package names in yarn-packages.nix finish in
  #   .tar.gz where due (especially jsonld-signatures)
  # Most errors where due to jsonld-signature (name, git version, etc.)
  #   or bluebird (3.5.18 instead vs 3.5.21)
  yarnModulesArg = rec {
    pname = "peertube-yarn-modules";
    version = "1.2.0";
    name = "peertube-yarn-modules-${version}";
    packageJSON = "${patchedPackages}/package.json";
    yarnLock = "${patchedPackages}/yarn.lock";
    yarnNix = ./yarn-packages.nix;
    pkgConfig = {
      all = {
        buildInputs = [ mylibs.yarn2nixPackage.src ];
      };
      bcrypt = {
        buildInputs = [ nodePackages.node-pre-gyp ];
        postInstall = let
          bcrypt_lib = fetchurl {
            url = "https://github.com/kelektiv/node.bcrypt.js/releases/download/v3.0.2/bcrypt_lib-v3.0.2-node-v57-linux-x64-glibc.tar.gz";
            sha256 = "04bj3yn1wi8a6izihskyks0bb4nls3mndgb2yj12iraiv5dmg097";
          };
        in
          ''
            mkdir lib && tar -C lib -xf ${bcrypt_lib}
            patchShebangs ../node-pre-gyp
            npm run install
          '';
      };
      dtrace-provider = {
        buildInputs = [ python nodePackages.node-gyp ];
        postInstall = ''
          npx node-gyp rebuild --tarball=${nodeHeaders}
          '';
      };
      rdf-canonize = {
        buildInputs = [ python nodePackages.node-gyp ];
        postInstall = ''
          npx node-gyp rebuild --tarball=${nodeHeaders}
          '';
      };
      sharp = {
        buildInputs = [ python nodePackages.node-gyp ];
        postInstall =
          let
            tarball = fetchurl {
              url = "https://github.com/lovell/sharp-libvips/releases/download/v8.7.0/libvips-8.7.0-linux-x64.tar.gz";
              sha256 = "1sq7qrp1q1pcrd165c3sky7qjx1kqihfpr4ailb5k73rwyh8lxg4";
            };
          in
          ''
            mkdir vendor
            tar -C vendor -xf ${tarball}
            patchShebangs ../prebuild-install
            npx node install/libvips
            npx node install/dll-copy
            npx prebuild-install || npx node-gyp rebuild --tarball=${nodeHeaders}
          '';
      };
      utf-8-validate = {
        buildInputs = [ nodePackages.node-gyp-build ];
      };
      youtube-dl = {
        postInstall = ''
          mkdir bin
          ln -s ${youtube-dl}/bin/youtube-dl bin/youtube-dl
          cat > bin/details <<EOF
          {"version":"${youtube-dl.version}","path":null,"exec":"youtube-dl"}
          EOF
          '';
      };
    };
  };
  yarnModules = mylibs.yarn2nixPackage.mkYarnModules yarnModulesArg;
  yarnModulesProd = mylibs.yarn2nixPackage.mkYarnModules (yarnModulesArg // { yarnFlags = mylibs.yarn2nixPackage.defaultYarnFlags ++ [ "--production" ]; });
  patchedServer = stdenv.mkDerivation (mylibs.fetchedGithub ./peertube.json // rec {
    patches = lib.optionals ldap [ ./ldap.patch ] ++ [ ./sendmail.patch ];
    buildPhase = ''
      ln -s ${yarnModules}/node_modules .
      npm run build:server
      '';
    installPhase = ''
      mkdir $out
      cp -a dist/server $out
      '';
    buildInputs = [ nodejs yarnModules ];
  });
in
  stdenv.mkDerivation rec {
    version = "v1.2.0";
    name = "peertube-${version}";
    src = fetchzip {
      url = "https://github.com/Chocobozzz/PeerTube/releases/download/${version}/${name}.zip";
      sha256 = "18fp3fy1crw67gdpc29nr38b5zy2f68l70w47zwp7dzhd8bbbipp";
    };
    patches = lib.optionals ldap [ ./ldap_yarn.patch ];
    buildPhase = ''
      ln -s ${yarnModulesProd}/node_modules .
      rm -rf dist/server && cp -a ${patchedServer}/server dist
      '';
    installPhase = ''
      mkdir $out
      cp -a * $out
      ln -s /tmp $out/.cache
      '';
    buildInputs = [ yarnModulesProd ];
  }
