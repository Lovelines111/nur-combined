{ stdenv, fetchFromGitHub, lib, zig-master }:

stdenv.mkDerivation rec {
  name = "zls";
  version = "unstable-2022-08-10";

  src = fetchFromGitHub {
    owner = "zigtools";
    repo = "zls";
    rev = "e98aea61ea5c5c487100c97786c7763c38236b15";
    sha256 = "sha256-Y9PbvsR5kHhka8fluJ8cNmHVqIgzGuAh0Wph67wAL5Q=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [ zig-master ];

  preBuild = ''
    export HOME=$TMPDIR
  '';

  installPhase = ''
    zig version
    zig build -Drelease-safe --prefix $out
  '';

  meta = with lib; {
    description = "Zig LSP implementation + Zig Language Server";
    homepage = "https://github.com/zigtools/zls";
    license = licenses.mit;
    maintainers = with maintainers; [ devins2518 ];
    platforms = with platforms; linux ++ darwin;
  };
}
