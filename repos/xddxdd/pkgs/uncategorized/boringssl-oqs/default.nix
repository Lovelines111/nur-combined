{
  lib,
  stdenv,
  buildGoModule,
  sources,
  cmake,
  ninja,
  perl,
  pkg-config,
  liboqs-unstable,
  ...
}:
let
  # CMAKE_OSX_ARCHITECTURES is set to x86_64 by Nix, but it confuses boringssl on aarch64-linux.
  cmakeFlags = [
    "-GNinja"
    "-DCMAKE_BUILD_TYPE=Release"
    "-DLIBOQS_DIR=${liboqs-unstable}"
    "-DLIBOQS_SHARED=ON"
    "-DBUILD_SHARED_LIBS=ON"
    "-DCMAKE_SKIP_BUILD_RPATH=ON"
    "-DCMAKE_SKIP_INSTALL_RPATH=ON"
  ] ++ lib.optionals stdenv.isLinux [ "-DCMAKE_OSX_ARCHITECTURES=" ];
in
buildGoModule {
  inherit (sources.boringssl-oqs) pname version src;
  vendorHash = "sha256-CfkBfoN9tsq4eUKjuxfuCOOx1i/OHpjGaZvon52uxz4=";
  proxyVendor = true;

  enableParallelBuilding = true;

  nativeBuildInputs = [
    cmake
    ninja
    perl
    pkg-config
  ];

  preBuild =
    ''
      export cmakeFlags="${builtins.concatStringsSep " " cmakeFlags}"
      cmakeConfigurePhase
    ''
    + lib.optionalString (stdenv.buildPlatform != stdenv.hostPlatform) ''
      export GOARCH=$(go env GOHOSTARCH)
    '';

  env.NIX_CFLAGS_COMPILE = toString (
    lib.optionals stdenv.cc.isGNU [
      # Needed with GCC 12 but breaks on darwin (with clang)
      "-Wno-error=stringop-overflow"
    ]
  );

  buildPhase = ''
    ninjaBuildPhase
  '';

  installPhase = ''
    mkdir -p $bin/bin $dev $out/lib
    mv tool/bssl              $bin/bin
    mv ssl/libssl.*           $out/lib
    mv crypto/libcrypto.*     $out/lib
    mv decrepit/libdecrepit.* $out/lib
    mv ../include $dev
  '';

  outputs = [
    "out"
    "bin"
    "dev"
  ];

  meta = with lib; {
    mainProgram = "bssl";
    maintainers = with lib.maintainers; [ xddxdd ];
    description = "Fork of BoringSSL that includes prototype quantum-resistant key exchange and authentication in the TLS handshake based on liboqs";
    homepage = "https://openquantumsafe.org";
    license = with licenses; [
      openssl
      isc
      mit
      bsd3
    ];
  };
}
