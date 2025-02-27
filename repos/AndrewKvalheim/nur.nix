{ pkgs }:

rec {
  hmModules = {
    nixpkgs-issue-55674 = import ./packages/nixpkgs-issue-55674.nix;
    xcompose = import ./packages/xcompose.nix;
  };

  modules = {
    nixpkgs-issue-55674 = import ./packages/nixpkgs-issue-55674.nix;
    nixpkgs-issue-163080 = import ./packages/nixpkgs-issue-163080.nix;
  };

  lib = {
    inherit (import ./common/resources/lib.nix { inherit (pkgs) lib; })
      contrastRatio
      linearRgbToRgb
      oklchToCss
      oklchToLinearRgb
      rgbToHex
      round
      sgr;
  };

  apex = pkgs.callPackage ./packages/apex.nix { };
  buildJosmPlugin = pkgs.callPackage ./packages/buildJosmPlugin.nix { };
  cavif = pkgs.callPackage ./packages/cavif.nix { };
  ch57x-keyboard-tool = pkgs.callPackage ./packages/ch57x-keyboard-tool.nix { };
  co2monitor = pkgs.callPackage ./packages/co2monitor.nix { };
  decompiler-mc = pkgs.callPackage ./packages/decompiler-mc.nix { };
  dmarc-report-notifier = pkgs.callPackage ./packages/dmarc-report-notifier.nix {
    python3Packages = (pkgs.python3.override {
      packageOverrides = _: _: {
        # Dependency pkgs.python3Packages.parsedmarc was broken on 2024-03-12 by
        # NixOS/nixpkgs#294305. A workaround was subsequently applied to dependent
        # pkgs.parsedmarc in NixOS/nixpkgs#280940 but the library remains broken, so
        # here we duplicate the workaround.
        msgraph-core = pkgs.lib.throwIfNot pkgs.python3Packages.parsedmarc.meta.broken "python3Packages.parsedmarc is no longer broken"
          (pkgs.lib.findFirst (p: p.pname == "msgraph-core") null pkgs.parsedmarc.requiredPythonModules);
      };
    }).pkgs;
  };
  fastnbt-tools = pkgs.callPackage ./packages/fastnbt-tools.nix { };
  fediblockhole = pkgs.callPackage ./packages/fediblockhole.nix { };
  git-diff-image = pkgs.callPackage ./packages/git-diff-image.nix { };
  gpx-reduce = pkgs.callPackage ./packages/gpx-reduce.nix { };
  gtk4-icon-browser = pkgs.callPackage ./packages/gtk4-icon-browser.nix { };
  iptables_exporter = pkgs.callPackage ./packages/iptables_exporter.nix { };
  josm-imagery-used = pkgs.callPackage ./packages/josm-imagery-used.nix { inherit buildJosmPlugin; };
  little-a-map = pkgs.callPackage ./packages/little-a-map.nix { };
  minemap = pkgs.callPackage ./packages/minemap.nix { };
  mmdbinspect = pkgs.callPackage ./packages/mmdbinspect.nix { };
  nbt-explorer = pkgs.callPackage ./packages/nbt-explorer.nix { };
  pngquant-interactive = pkgs.callPackage ./packages/pngquant-interactive.nix { };
  spf-check = pkgs.callPackage ./packages/spf-check.nix { };
  spf-tree = pkgs.callPackage ./packages/spf-tree.nix { };
  tile-stitch = pkgs.callPackage ./packages/tile-stitch.nix { };
}
