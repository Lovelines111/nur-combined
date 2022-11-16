{ lib
, fetchurl
, symlinkJoin
, buildGoModule
, runCommand
, makeWrapper
, v2ray-geoip
, v2ray-domain-list-community
, assetsDir ? null
, sources
}:
let
  assetsDrv =
    if assetsDir != null then assetsDir else
    symlinkJoin {
      name = "v2ray-assets";
      paths = [
        "${v2ray-geoip}/share/v2ray"
        "${v2ray-domain-list-community}/share/v2ray"
      ];
    };

  core = buildGoModule rec {
    inherit (sources.v2ray) pname version src;
    vendorSha256 = "sha256-RuDCAgTzqwe5fUwa9ce2wRx4FPT8siRLbP7mU8/jg/Y=";

    doCheck = false;

    patches = [
      (fetchurl {
        url = "https://patch-diff.githubusercontent.com/raw/v2fly/v2ray-core/pull/1923.diff";
        sha256 = "sha256-CASkxR9knylGNmi3dldmBLT5mXMuAKkHczhFXnJkcjY=";
      })
    ];

    buildPhase = ''
      buildFlagsArray=(-v -p $NIX_BUILD_CORES -ldflags="-s -w")
      runHook preBuild
      go build "''${buildFlagsArray[@]}" -o v2ray ./main
      runHook postBuild
    '';

    installPhase = ''
      install -Dm755 v2ray -t $out/bin
    '';

    meta = {
      homepage = "https://www.v2fly.org/en_US/";
      description = "A platform for building proxies to bypass network restrictions";
      license = lib.licenses.mit;
    };
  };
in
runCommand core.name
{
  inherit (core) version meta;
  nativeBuildInputs = [ makeWrapper ];
} ''
  for file in ${core}/bin/*; do
    makeWrapper "$file" "$out/bin/$(basename "$file")" \
      --set-default V2RAY_LOCATION_ASSET ${assetsDrv}
  done
''
