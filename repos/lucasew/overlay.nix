flake: final: prev:
let
  inherit (flake) inputs;
  inherit (flake.outputs) global;
  inherit (global) rootPath;
  inherit (prev) lib callPackage writeShellScript;
  inherit (lib) recursiveUpdate;
  inherit (builtins) toString length head tail;
  inherit (flake.inputs) nix-option nixpkgs;
in
let
  cp = f: (callPackage f) {};
  dotenv = cp inputs.dotenv;
  wrapDotenv = (file: script:
    let
      dotenvFile = ((toString rootPath) + "/secrets/" + (toString file));
      command = writeShellScript "dotenv-wrapper" script;
    in ''
      ${dotenv}/bin/dotenv "@${toString dotenvFile}" -- ${command} "$@"
    '');

in {
  inherit dotenv;
  inherit wrapDotenv;
  inherit (inputs.nixos-generators.packages."${prev.system}") nixos-generators;
  inherit flake;

  lib = prev.lib // {
    jpg2png = cp ./lib/jpg2png.nix;
  };
  p2k = cp inputs.pocket2kindle;
  redial_proxy = cp inputs.redial_proxy;
  send2kindle = cp inputs.send2kindle;
  comma = cp inputs.comma;
  wrapVSCode = args: import inputs.nix-vscode (args // {pkgs = prev;});
  wrapEmacs = args: import inputs.nix-emacs (args // {pkgs = prev;});
  c4me = cp ./packages/c4me;
  encore = cp ./packages/encore.nix;
  xplr = cp ./packages/xplr.nix;
  personal-utils = cp ./packages/personal-utils.nix;
  nixwrap = cp ./packages/nixwrap.nix;
  nix-option = callPackage "${nix-option}" {
    nixos-option = (callPackage "${nixpkgs}/nixos/modules/installer/tools/nixos-option" {}).overrideAttrs (attrs: attrs // {
      meta = attrs.meta // {
        platforms = lib.platforms.all;
      };
    });
  };
  wineApps = {
    wine7zip = cp ./packages/wineApps/7zip.nix;
    cs_extreme = cp ./packages/wineApps/cs_extreme.nix;
    dead_space = cp ./packages/wineApps/dead_space.nix;
    gta_sa = cp ./packages/wineApps/gta_sa.nix;
    among_us = cp ./packages/wineApps/among_us.nix;
    ets2 = cp ./packages/wineApps/ets2.nix;
    mspaint = cp ./packages/wineApps/mspaint.nix;
    pinball = cp ./packages/wineApps/pinball.nix;
    sosim = cp ./packages/wineApps/sosim.nix;
    tora = cp ./packages/wineApps/tora.nix;
    nfsu2 = cp ./packages/wineApps/nfsu2.nix;
    flatout2 = cp ./packages/wineApps/flatout2.nix;
    watchdogs2 = cp ./packages/wineApps/watchdogs2.nix;
    rimworld = cp ./packages/wineApps/rimworld.nix;
  };
  fhsctl = cp ./packages/fhsctl.nix;
  comby = cp ./packages/comby.nix;
  custom = {
    ncdu = cp ./packages/custom/ncdu.nix;
    neovim = cp ./packages/custom/neovim;
    emacs = cp ./packages/custom/emacs;
    rofi = cp ./packages/custom/rofi.nix;
    tixati = cp ./packages/custom/tixati.nix;
    vscode = cp ./packages/custom/vscode;
    send2kindle = cp ./packages/custom/send2kindle.nix;
    retroarch = cp ./packages/custom/retroarch.nix;
    loader = cp ./packages/custom/loader/default.nix;
    polybar = cp ./packages/custom/polybar.nix;
  };
  t-launcher = cp ./packages/tlauncher.nix;
  pkg = cp ./packages/pkg.nix;
  pipedream-cli = cp ./packages/pipedream-cli.nix;
  wrapWine = cp ./packages/wrapWine.nix;
  wonderland-engine = cp ./packages/wonderland-engine.nix;
  preload = cp ./packages/preload.nix;
  nodePackages = cp ./packages/node_clis/package_data/default.nix;
  nur = import flake.inputs.nur {
    inherit (prev) pkgs;
    nurpkgs = prev.pkgs;
  };
  discord = prev.discord.overrideAttrs (old: rec {
    version = "0.0.17";
    src = prev.fetchurl {
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      sha256 = "058k0cmbm4y572jqw83bayb2zzl2fw2aaz0zj1gvg6sxblp76qil";
    };
  });
}
