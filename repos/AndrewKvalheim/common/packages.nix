resolved: stable:

with import ../packages/override-utils.nix { inherit stable; };

let
  community-vscode-extensions = (import <community-vscode-extensions>).extensions.${stable.system}.forVSCodeVersion resolved.vscodium.version;
  open-vsx = { _name = "open-vsx"; vscode-extensions = community-vscode-extensions.open-vsx; };
  vscode-marketplace = { _name = "vscode-marketplace"; vscode-extensions = community-vscode-extensions.vscode-marketplace; };
in
specify {
  add-words = any;
  affine-font = any;
  album-art = any;
  ansible-vault-pass-client = any;
  apex = any;
  attachments = any;
  buildJosmPlugin = any;
  cavif = any;
  ch57x-keyboard-tool = any;
  co2monitor = any;
  decompiler-mc = any;
  dmarc-report-converter = any;
  dmarc-report-notifier = any;
  email-hash = any;
  emote.overlay = e: { postInstall = e.postInstall or "" + "\nsubstituteInPlace $out/share/applications/emote.desktop --replace-fail 'Exec=emote' \"Exec=$out/bin/emote\""; }; # Allow desktop entry as entrypoint
  fastnbt-tools = any;
  fediblockhole = any;
  firefox.overlay = w: { buildCommand = w.buildCommand + "\nwrapProgram $executablePath --unset LC_TIME"; }; # Workaround for bugzilla#1269895
  git-diff-image = any;
  git-diff-minecraft = any;
  git-remote = any;
  gnome.gnome-shell.patch = ../packages/resources/gnome-shell_screenshot-location.patch; # Pending GNOME/gnome-shell#5370
  gnomeExtensions.forge.patch = [
    (stable.fetchpatch { url = "https://patch-diff.githubusercontent.com/raw/forge-ext/forge/pull/392.patch"; hash = "sha256-XJEJDHr31tOq/kwRuUrm2/tu8L88giqVEzFZXet7/qY="; }) # forge-ext/forge#341
    (stable.fetchpatch { url = "https://patch-diff.githubusercontent.com/raw/forge-ext/forge/pull/393.patch"; hash = "sha256-mAwhqzFgu6W0NT9wQlKFSA61O2Ta+GQ+1BzYIHSkbhU="; }) # forge-ext/forge#391
    (stable.fetchpatch { url = "https://patch-diff.githubusercontent.com/raw/forge-ext/forge/pull/395.patch"; hash = "sha256-L/rvRP6e5v55WmZrUImgC3BvgqyG9yv7SKeRCFkKpYg="; }) # forge-ext/forge#395
  ];
  gopass-await.deps = { inherit (stable.gnome) zenity; };
  gopass-env = any;
  gopass-ydotool = any;
  gpx-reduce = any;
  graalvm-ce.overlay = g: stable.lib.throwIf (stable.lib.hasInfix "font" g.preFixup) "graalvm-ce no longer requires an overlay" { preFixup = g.preFixup + "\nfind \"$out\" -name libfontmanager.so -exec patchelf --add-needed libfontconfig.so {} \\;"; }; # Workaround for https://github.com/NixOS/nixpkgs/pull/215583#issuecomment-1615369844
  graalvmCEPackages.graaljs.overlay = g: stable.lib.throwIf (stable.lib.hasInfix "jvm" g.src.url) "graaljs no longer requires an overlay" { src = stable.fetchurl { url = builtins.replaceStrings [ "community" ] [ "community-jvm" ] g.src.url; hash = "sha256-fZCcRSuQm26qwZuS6ryIp4b9Br7xMmiu1ZUnJBOemT4="; }; buildInputs = g.buildInputs ++ stable.graalvm-ce.buildInputs; }; # https://discourse.nixos.org/t/36314
  httpie.env.NIX_SSL_CERT_FILE = "/etc/ssl/certs/ca-certificates.crt"; # NixOS/nixpkgs#94666
  ios-safari-remote-debug-kit = any;
  ios-webkit-debug-proxy = any;
  iosevka-custom = any;
  josm = { jre = resolved.graalvm-ce; extraJavaOpts = "--module-path=${resolved.graalvmCEPackages.graaljs}/modules"; }; # josm-scripting-plugin
  josm-imagery-used = any;
  minemap = any;
  mmdbinspect = any;
  mozjpeg-simple = any;
  nbt-explorer = any;
  off = any;
  picard.overlay = p: { preFixup = p.preFixup + "\nmakeWrapperArgs+=(--prefix PATH : ${stable.lib.makeBinPath [ resolved.rsgain ]})"; }; # NixOS/nixpkgs#255222
  pngquant-interactive = any;
  pnpm = any;
  signal-desktop.gappsWrapperArgs = "--add-flags --use-tray-icon"; # Enable tray icon
  spf-check = any;
  spf-tree = any;
  tile-stitch = any;
  unln = any;
  vscode-extensions = namespaced {
    bierner.markdown-preview-github-styles.search = open-vsx;
    bpruitt-goddard.mermaid-markdown-syntax-highlighting.search = open-vsx;
    compilouit.xkb.search = open-vsx;
    csstools.postcss.search = open-vsx;
    earshinov.permute-lines.search = open-vsx;
    earshinov.simple-alignment.search = open-vsx;
    eseom.nunjucks-template.search = open-vsx;
    exiasr.hadolint.search = open-vsx;
    fabiospampinato.vscode-highlight.search = open-vsx;
    flowtype.flow-for-vscode = { version = "≥2.2.1"; search = [ open-vsx vscode-marketplace ]; };
    joaompinto.vscode-graphviz.search = open-vsx;
    kokakiwi.vscode-just.search = open-vsx;
    leighlondon.eml.search = [ open-vsx vscode-marketplace ];
    mitchdenny.ecdc.search = open-vsx;
    ronnidc.nunjucks.search = [ open-vsx vscode-marketplace ];
    silvenon.mdx.search = open-vsx;
    sissel.shopify-liquid.search = open-vsx;
    syler.sass-indented.search = open-vsx;
    theaflowers.qalc.search = open-vsx;
    volkerdobler.insertnums.search = [ open-vsx vscode-marketplace ];
    ybaumes.highlight-trailing-white-spaces.search = open-vsx;
  };
  vscodium.gappsWrapperArgs = "--unset NIXOS_OZONE_WL"; # Workaround for blurriness and mangled keybindings
  whipper.patch = [ ../packages/resources/whipper_flac-level.patch ../packages/resources/whipper_speed.patch ../packages/resources/whipper_detect-tty.patch ];
  yaru-theme.patch = ../packages/resources/yaru-theme_font.patch; # Set GNOME Shell font
  ydotool.patch = ../packages/resources/ydotool-halmakish.patch; # Pending ReimuNotMoe/ydotool#177
  zsh-abbr.condition = z: !z.meta.unfree;
  zsh-click = any;
}
