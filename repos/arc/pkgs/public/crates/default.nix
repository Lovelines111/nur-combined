{
  rust-analyzer = { fetchFromGitHub, rustPlatform, lib, darwin, hostPlatform }: rustPlatform.buildRustPackage rec {
    pname = "rust-analyzer";
    version = "2021-07-26";
    src = fetchFromGitHub {
      owner = "rust-analyzer";
      repo = pname;
      rev = version;
      sha256 = "04nmi9m87yx0lv4334vfz0cybm15rlchgdvzbhgg1x8y1s20859l";
    };
    #cargoBuildFlags = ["--features" "jemalloc" ]; # why removed :(
    preBuild = "pushd crates/rust-analyzer";
    postBuild = "popd";

    buildInputs = lib.optionals hostPlatform.isDarwin [ darwin.cf-private darwin.apple_sdk.frameworks.CoreServices darwin.libiconv ];
    # darwin undefined symbol _CFURLResourceIsReachable: https://discourse.nixos.org/t/help-with-rust-linker-error-on-darwin-cfurlresourceisreachable/2657

    cargoSha256 = "1a8d2l4rhirhxxapzkj8gmhfc5rcwkzcx7yzsl108f7jsvaf8qf6";
    meta.broken = ! lib.versionAtLeast rustPlatform.rust.rustc.version "1.46.0";

    doCheck = false;
  };

  cargo-download-arc = {
    fetchFromGitHub, rustPlatform, lib
  , openssl, pkgconfig, hostPlatform, darwin,
  }: rustPlatform.buildRustPackage rec {
    pname = "cargo-download";
    version = "0.1.2";
    src = fetchFromGitHub {
      owner = "Xion";
      repo = pname;
      rev = "b73f6ced56799757945d5bdf2e03df32e9b9ed39";
      sha256 = "1knwxx9d9vnkxib44xircgw1zhwjnf6mlpkcq81dixp3f070yabl";
    };

    nativeBuildInputs = lib.optional hostPlatform.isLinux pkgconfig;
    buildInputs = lib.optional hostPlatform.isLinux openssl
      ++ lib.optional hostPlatform.isDarwin darwin.apple_sdk.frameworks.Security;
    cargoSha256 = "1bgiwnppbhrhx376fba4bqh1bhick80zrknwnw0qz425vxhffl5k";
    cargoPatches = [ ./cargo-download-lock.patch ];
  };

  cargo-with = { fetchFromGitHub, rustPlatform }: rustPlatform.buildRustPackage rec {
    pname = "cargo-with";
    version = "0.3.2";
    src = fetchFromGitHub {
      owner = "cbourjau";
      repo = pname;
      rev = "2eb3cbd87f221f24e780b84306574541de38a1e4";
      sha256 = "127ifblgp7v2vv8iafl88y1cjyskymqdi0nzsavnyab0x9jiskcr";
    };

    cargoPatches = [ ./cargo-with-lock.patch ];
    cargoSha256 = "07rv1laydzwkkicblrqlybp8w82qrdbj95pff93vi7012mii0mpc";
  };

  cargo-info = {
    fetchFromGitLab, fetchurl, rustPlatform, lib
  , hostPlatform, darwin
  , openssl, pkgconfig
  }: rustPlatform.buildRustPackage rec {
    pname = "cargo-info";
    version = "0.5.14";
    src = fetchFromGitLab {
      owner = "imp";
      repo = pname;
      rev = version;
      sha256 = "0gpzcfw607wfb1pv8z46yk4l2rx6pn64mhw5jrj7x8331vl2dvwv";
    };

    cargoPatches = [ (fetchurl {
      # https://gitlab.com/imp/cargo-info/merge_requests/6
      # NOTE: there's also https://gitlab.com/imp/cargo-info/merge_requests/7 which is about equivalent?
      name = "update-deps.patch";
      url = "https://gitlab.com/imp/cargo-info/commit/635a128a9e46ee9f3c443ed070da63b3ebb78033.diff";
      sha256 = "14vz860a40njx4fdaxdw1iy92isihgab65x5c6kxb68iha6bg4j9";
    }) ];
    cargoSha256 = "1fvdpx60v3cv07b9vzybki519x10xgmm65bj5a57gjg6vii3ywfd";

    nativeBuildInputs = lib.optional hostPlatform.isLinux pkgconfig;
    buildInputs = lib.optional hostPlatform.isLinux openssl
      ++ lib.optional hostPlatform.isDarwin darwin.apple_sdk.frameworks.Security;
  };

  xargo-unwrapped = { fetchFromGitHub, rustPlatform }: rustPlatform.buildRustPackage rec {
    pname = "xargo";
    version = "0.3.16";
    src = fetchFromGitHub {
      owner = "japaric";
      repo = pname;
      rev = "v${version}";
      sha256 = "019s7jd7k8r1r0iwd40113c56sfifrzz8i4lwh75n0fpnalpcnyb";
    };

    RUSTC_BOOTSTRAP = true;

    patches = [ ./xargo-stable.patch ];
    cargoSha256 = "1y0l5mi1pvq9h9mgvig2qyam49ij33p5lr8ww0qypdg1r8kslhsa";

    doCheck = false;
  };

  xargo = { stdenvNoCC, xargo-unwrapped, makeWrapper, rustPlatform, rustc, cargo, rustcSrc ? rustPlatform.rustcSrc }: stdenvNoCC.mkDerivation {
    inherit (xargo-unwrapped) pname version;
    xargo = xargo-unwrapped;
    inherit rustcSrc rustc cargo;

    nativeBuildInputs = [ makeWrapper ];

    buildCommand = ''
      mkdir -p $out/bin
      makeWrapper $xargo/bin/xargo $out/bin/xargo \
        --set-default XARGO_RUST_SRC "$rustcSrc" \
        --set-default CARGO "$cargo/bin/cargo" \
        --set-default RUSTC "$rustc/bin/rustc"
    '';
  };

  cargo-binutils-unwrapped = {
    fetchFromGitHub, rustPlatform
  }: rustPlatform.buildRustPackage rec {
    pname = "cargo-binutils";
    version = "0.3.2";
    src = fetchFromGitHub {
      owner = "rust-embedded";
      repo = pname;
      rev = "v${version}";
      sha256 = "0h7lrqrgmmm3qdgn0l45kh1rpdvb24q8fl49ji5ynadfk188mkf3";
    };
    cargoPatches = [ ./cargo-binutils-lock.patch ];
    patches = [ ./cargo-binutils-path.patch ];

    cargoSha256 = "0kkmqqdq1aknw6598nnwar9j254qlw45vf3byxskfy1qhq77ryql";

    doCheck = false;

    postInstall = ''
      rm $out/bin/rust-*
    '';
  };
  cargo-binutils = {
    cargo-binutils-unwrapped, makeWrapper
  , stdenvNoCC, stdenv, bintools ? stdenv.cc.bintools.bintools
  }: stdenvNoCC.mkDerivation {
    pname = "cargo-binutils-wrapper";
    inherit (cargo-binutils-unwrapped) version;

    nativeBuildInputs = [ makeWrapper ];
    buildInputs = [ cargo-binutils-unwrapped ];

    # $bintools/bin should contain: ar, nm, objcopy, objdump, profdata, readobj/readelf, size, strip
    cargoBinutils = cargo-binutils-unwrapped;
    inherit bintools;
    buildCommand = ''
      mkdir -p $out
      for binary in $cargoBinutils/bin/cargo-*; do
        makeWrapper $binary $out/bin/$(basename $binary) \
          --run '[[ -z $CARGO_BUILD_TARGET ]] || set -- --target "$CARGO_BUILD_TARGET" "$@"' \
          --prefix PATH : $bintools/bin
      done
      if [[ -e $bintools/bin/readelf && ! -e $bintools/bin/readobj ]]; then
        ln -s $bintools/bin/readelf $out/bin/readobj
      fi
    '';
  };

  cargo-call-stack = {
    lib, fetchFromGitHub, rustPlatform
  }: rustPlatform.buildRustPackage rec {
    pname = "cargo-call-stack";
    version = "2020-07-07";

    src = fetchFromGitHub {
      owner = "japaric";
      repo = pname;
      rev = "d8f4338adb4c8cc3dfaeba22b1a4d5d22168cb17";
      sha256 = "1sdskiykx9bvnr8dny1dg138cm6m8zhvs8n25lksg2s34xdjzh3c";
    };

    cargoPatches = [ ./cargo-call-stack-lock.patch ];
    patches = [
      ./cargo-call-stack-udf.patch # https://github.com/japaric/cargo-call-stack/issues/20
    ];
    cargoSha256 = "05gbh3kklr2d9m1mmj3lgnwqvgd53dzn5ibiz7ny75ch5ykqq720";

    # Only because of the cargo lockfile version...
    meta.broken = !lib.rustVersionAtLeast rustPlatform "1.41";
  };

  cargo-stack-sizes = {
    fetchFromGitHub, rustPlatform
  }: rustPlatform.buildRustPackage rec {
    pname = "stack-sizes";
    version = "0.4.0";

    src = fetchFromGitHub {
      owner = "japaric";
      repo = pname;
      rev = "v${version}";
      sha256 = "0k260hkv734zwwwz5r93zriimrg13v4h0cmhmqf5a4svkns8z06h";
    };

    cargoPatches = [ ./cargo-stack-sizes-lock.patch ];
    patches = [ ./cargo-stack-sizes-warn.patch ./cargo-stack-sizes-features.patch ];
    cargoSha256 = "1blkxw6ginvzmgijv6zsjny4q5wrb92xbsy0sqxziqgy2lvl02za";

    doCheck = false; # there are no tests
  };

  cargo-llvm-lines = {
    fetchFromGitHub, rustPlatform
  }: rustPlatform.buildRustPackage rec {
    pname = "cargo-llvm-lines";
    version = "0.4.9";

    src = fetchFromGitHub {
      owner = "dtolnay";
      repo = pname;
      rev = "${version}";
      sha256 = "0lkg1xfabb1psxizbis7rymr70yz5l5rjsn6k7w5wpzqqsni0qyv";
    };

    cargoSha256 = "1a7j4bqwa9zqmfvp851jlm9macvhsav31qxsiyl94xnn1l5yvwg1";
  };

  screenstub = {
    fetchFromGitHub
  , rustPlatform
  , pkg-config
  , libxcb
  , udev
  , python3
  }: rustPlatform.buildRustPackage rec {
    pname = "screenstub";
    version = "2021-05-26";
    src = fetchFromGitHub {
      owner = "arcnmx";
      repo = pname;
      rev = "95166c8b65bb450498d797b7a85bc3f8dbf519ce";
      sha256 = "1q1c5irirpq0rf7a2jfq3ya8snj9dip13w3pvad88sbja4740w59";
    };

    nativeBuildInputs = [ pkg-config python3 ];
    buildInputs = [ libxcb udev ];

    cargoSha256 = "0577qifz39yiz636fs815mcyn6kcjmwaga2zndk31q0dcr8j774m";

    doCheck = false;
  };

  ladspa-rnnoise = {
    fetchFromGitHub
  , rustPlatform
  }: rustPlatform.buildRustPackage rec {
    pname = "ladspa-rnnoise";
    version = "2021-05-24";
    src = fetchFromGitHub {
      owner = "kittywitch";
      repo = "ladspa-rnnoise-rs";
      rev = "b516b4e0790f30a73d3e6ce6e9f9a8fd32cc8e88";
      sha256 = "178056z1z6dybhhbpgr9lyi73az6jp40c2zw104mhwcv9cqbqpis";
    };

    NIX_LDFLAGS = "-u ladspa_descriptor"; # ladspa.rs linker symbol workaround

    postInstall = ''
      install -d $out/lib/ladspa
      mv $out/lib/*.so $out/lib/ladspa/
    '';

    cargoSha256 = "1dlywwlrn06k3dwk7l93il32mp1ry890pg4zc16middiwzs4pdwq";
  };

  rbw-bitw = {
    fetchFromGitHub
  , rustPlatform
  , makeWrapper
  , pkg-config
  , openssl
  , gnupg, enableGpg ? true
  , lib
  , hostPlatform, darwin
  }: rustPlatform.buildRustPackage rec {
    pname = "rbw-bitw";
    version = "2020-10-05";
    src = fetchFromGitHub {
      owner = "arcnmx";
      repo = "rbw";
      rev = "d34a3347b5b3184d163111e1c925e687c7cbabc1";
      sha256 = "058wda5z2zwxn4xxqqxi8ms49v2bx7hxqh2hpxs59ypx676x61b6";
    };

    nativeBuildInputs = [ pkg-config makeWrapper ];
    buildInputs = [ openssl ]
      ++ lib.optional enableGpg gnupg
      ++ lib.optional hostPlatform.isDarwin darwin.apple_sdk.frameworks.Security;

    cargoBuildFlags = ["--bin" "bitw" ];
    cargoSha256 = "1qs09dqyfxyxlvf98rsvvjxvf4r1dcp84siwbj1q9pch0aaf4gjr";

    postInstall = lib.optionalString enableGpg ''
        wrapProgram $out/bin/bitw \
          --prefix PATH : ${gnupg}/bin
    '';

    doCheck = false;
  };
}
