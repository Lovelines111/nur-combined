{ lib
, stdenv
, buildGoModule
, fetchFromGitHub
, installShellFiles
, buildPackages
, coreutils
, nix-update-script
}:

buildGoModule rec {
  pname = "sing-box";
  version = "1.7.1";

  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-5n5AnuJQvw/26X3UWdLvegFhwYzjtS7o0d4cN3c3bfQ=";
  };

  vendorHash = "sha256-UvLZY4vMS6dI6z9kPcSzbB/cW/7rfbrlhcWh51q5sak=";

  tags = [
    "with_quic"
    "with_grpc"
    "with_dhcp"
    "with_wireguard"
    "with_ech"
    "with_utls"
    "with_reality_server"
    "with_acme"
    "with_clash_api"
    "with_v2ray_api"
    "with_gvisor"
    # "with_embedded_tor"
    # "with_lwip"
  ];

  subPackages = [
    "cmd/sing-box"
  ];

  nativeBuildInputs = [ installShellFiles ];

  ldflags = [
    "-X=github.com/sagernet/sing-box/constant.Version=${version}"
  ];

  postInstall = let emulator = stdenv.hostPlatform.emulator buildPackages; in ''
    installShellCompletion --cmd sing-box \
      --bash <(${emulator} $out/bin/sing-box completion bash) \
      --fish <(${emulator} $out/bin/sing-box completion fish) \
      --zsh  <(${emulator} $out/bin/sing-box completion zsh )

    substituteInPlace release/config/sing-box{,@}.service \
      --replace "/usr/bin/sing-box" "$out/bin/sing-box" \
      --replace "/bin/kill" "${coreutils}/bin/kill"
    install -Dm444 -t "$out/lib/systemd/system/" release/config/sing-box{,@}.service
  '';

  passthru.updateScript = nix-update-script { };

  meta = with lib;{
    homepage = "https://sing-box.sagernet.org";
    description = "The universal proxy platform";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ nickcao ataraxiasjel ];
  };
}
