{ stdenv
, lib
, fetchFromGitHub
, installShellFiles
, pkg-config
, scdoc
, dbus
, nix-update-script
}:

stdenv.mkDerivation rec {
  pname = "mpris-ctl";
  version = "0.9.98";

  src = fetchFromGitHub {
    owner = "mariusor";
    repo = "mpris-ctl";
    rev = "v${version}";
    hash = "sha256-AWXRXDlsH9o77VRmmozGVSvnJvz0OLGIghth1iSr+YY=";
  };

  nativeBuildInputs = [ pkg-config scdoc installShellFiles ];

  buildInputs = [ dbus ];

  buildPhase = ''
    runHook preBuild

    make VERSION="${version}" release

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    scdoc < mpris-ctl.1.scd > mpris-ctl.1
    installManPage mpris-ctl.1
    install -D mpris-ctl $out/bin/mpris-ctl

    runHook postInstall
  '';

  passthru.updateScript = nix-update-script { };

  meta = with lib; {
    description = "Basic mpris player control for linux command line";
    homepage = "https://github.com/mariusor/mpris-ctl";
    platforms = platforms.linux;
    license = licenses.mit;
    maintainers = with maintainers; [ ataraxiasjel ];
  };
}
