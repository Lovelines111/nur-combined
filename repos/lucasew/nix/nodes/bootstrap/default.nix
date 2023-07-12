{global, pkgs, lib, self, config, ...}:
let
  inherit (pkgs) vim gitMinimal tmux xclip writeShellScriptBin killall;
  inherit (global) username;
in {
  imports = [
    ./bash-extra.nix
    ./colors.nix
    ./motd.nix
    ./netns.nix
    ./nix-binary-caches.nix
    ./nix.nix
    ./port-alloc.nix
    ./rev.nix
    ./screenkey.nix
    ./ssh.nix
    ./systemd-portd.nix
    ./tailscale.nix
    ./user.nix
    ./zerotier.nix
    ./nix-tmp.nix

    (builtins.fetchurl {
      url = "https://raw.githubusercontent.com/NixOS/nixpkgs/60c696e31b14797a346241e4f553399d92ba2b69/nixos/modules/config/dotd.nix";
      sha256 = "0n66xqb2vlv97fcfd3s74qv3dh9yslnvhxhzx3p3rq0vmsq4i2ml";
    })
  ];

  networking.firewall.allowedTCPPorts = [
    7879 # rclone DLNA
  ];

  boot.tmp.cleanOnBoot = true;
  i18n.defaultLocale = "pt_BR.UTF-8";
  time.timeZone = "America/Sao_Paulo";
  environment.systemPackages = [
    vim
    gitMinimal
    tmux
    xclip
    killall
  ];
  environment.variables = {
    EDITOR = "nvim";
    PATH = "$PATH";
  };
  programs.bash = {
    promptInit = builtins.readFile ./bash_init.sh;
  };
  networking.domain = lib.mkDefault "lucao.net";
}
