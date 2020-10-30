{ stdenv
, lib
, mkDerivation
, cmake
, ninja
, sources
, useSentry ? stdenv.isLinux
}:
let
  pname = "klogg";
  date = lib.substring 0 10 sources.klogg.date;
  version = "unstable-" + date;
in
mkDerivation {
  inherit pname version;
  src = sources.klogg;

  nativeBuildInputs = [ cmake ninja ];

  enableParallelBuilding = true;

  postPatch = lib.optionalString useSentry ''
    patchelf --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) \
      --set-rpath "$out/lib:${lib.makeLibraryPath [ stdenv.cc.cc.lib ]}" \
      3rdparty/sentry/dump_syms/linux/dump_syms
    patchelf --set-interpreter $(cat $NIX_CC/nix-support/dynamic-linker) \
      --set-rpath "$out/lib:${lib.makeLibraryPath [ stdenv.cc.cc.lib ]}" \
      3rdparty/sentry/dump_syms/linux/minidump_dump
  '';

  preConfigure = "export KLOGG_VERSION=${version}";

  cmakeFlags = lib.optional (!useSentry) "-DKLOGG_USE_SENTRY:BOOL=OFF";

  meta = with lib; {
    inherit (sources.klogg) description homepage;
    license = licenses.gpl3Plus;
    maintainers = [ maintainers.sikmir ];
    platforms = platforms.unix;
  };
}
