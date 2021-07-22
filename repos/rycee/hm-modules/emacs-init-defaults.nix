# A collection of "uncontroversial" configurations for selected packages.

{ pkgs, lib, config, ... }:

{
  programs.emacs.init.usePackage = {
    all-the-icons = { extraPackages = [ pkgs.emacs-all-the-icons-fonts ]; };

    csharp-mode = { mode = [ ''"\\.cs\\'"'' ]; };

    dap-lldb = {
      config = ''
        (setq dap-lldb-debug-program "${pkgs.lldb}/bin/lldb-vscode")
      '';
    };

    deadgrep = {
      config = ''
        (setq deadgrep-executable "${pkgs.ripgrep}/bin/rg")
      '';
    };

    dhall-mode = { mode = [ ''"\\.dhall\\'"'' ]; };

    dockerfile-mode = { mode = [ ''"Dockerfile\\'"'' ]; };

    elm-mode = { mode = [ ''"\\.elm\\'"'' ]; };

    emacsql-sqlite3 = {
      enable =
        lib.mkDefault config.programs.emacs.init.usePackage.org-roam.enable;
      defer = lib.mkDefault true;
      config = ''
        (setq emacsql-sqlite3-executable "${pkgs.sqlite}/bin/sqlite3")
      '';
    };

    ggtags = {
      config = ''
        (setq ggtags-executable-directory "${pkgs.global}/bin")
      '';
    };

    idris-mode = {
      config = ''
        (setq idris-interpreter-path "${pkgs.idris}/bin/idris")
      '';
    };

    lsp-eslint = {
      config = ''
        (setq lsp-eslint-server-command '("node" "${pkgs.vscode-extensions.dbaeumer.vscode-eslint}/share/vscode/extensions/dbaeumer.vscode-eslint/server/out/eslintServer.js" "--stdio"))
      '';
    };

    markdown-mode = {
      mode = [ ''"\\.mdwn\\'"'' ''"\\.markdown\\'"'' ''"\\.md\\'"'' ];
    };

    nix-mode = { mode = [ ''"\\.nix\\'"'' ]; };

    notmuch = {
      config = ''
        (setq notmuch-command "${pkgs.notmuch}/bin/notmuch")
      '';
    };

    octave = { mode = [ ''("\\.m\\'" . octave-mode)'' ]; };

    ob-plantuml = {
      config = ''
        (setq org-plantuml-jar-path "${pkgs.plantuml}/lib/plantuml.jar")
      '';
    };

    org-roam = {
      config = ''
        (setq org-roam-graph-executable "${pkgs.graphviz}/bin/dot")
      '';
    };

    pandoc-mode = {
      config = ''
        (setq pandoc-binary "${pkgs.pandoc}/bin/pandoc")
      '';
    };

    plantuml-mode = {
      config = ''
        (setq plantuml-jar-path "${pkgs.plantuml}/lib/plantuml.jar")
      '';
    };

    protobuf-mode = { mode = [ ''"'\\.proto\\'"'' ]; };

    purescript-mode = { mode = [ ''"\\.purs\\'"'' ]; };

    ripgrep = {
      config = ''
        (setq ripgrep-executable "${pkgs.ripgrep}/bin/rg")
      '';
    };

    rust-mode = { mode = [ ''"\\.rs\\'"'' ]; };

    terraform-mode = { mode = [ ''"\\.tf\\'"'' ]; };

    yaml-mode = { mode = [ ''"\\.\\(e?ya?\\|ra\\)ml\\'"'' ]; };
  };
}
