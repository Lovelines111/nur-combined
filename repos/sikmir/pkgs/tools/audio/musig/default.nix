{ lib, buildGoModule, pkgconfig, portaudio, sources }:
let
  version = lib.substring 0 7 sources.musig.rev;
in
buildGoModule {
  pname = "musig";
  inherit version;
  src = sources.musig;

  vendorSha256 = "0ha1xjdwibm8543b4bx0xrbigngiiakksdc6mnp0mz5y6ai56pg5";

  nativeBuildInputs = [ pkgconfig ];

  buildInputs = [ portaudio ];

  buildFlagsArray = ''
    -ldflags=
      -X main.VERSION=${version}
  '';

  meta = with lib; {
    inherit (sources.musig) description homepage;
    license = licenses.mit;
    maintainers = with maintainers; [ sikmir ];
    platforms = platforms.unix;
  };
}
