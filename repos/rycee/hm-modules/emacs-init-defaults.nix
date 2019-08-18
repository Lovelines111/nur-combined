{ pkgs, ... }:

{
  programs.emacs.init.usePackage = {
    deadgrep = {
      config = ''
        (setq deadgrep-executable "${pkgs.ripgrep}/bin/rg")
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

    lsp-rust = {
      config = ''
        (setq lsp-rust-rls-server-command "${pkgs.rls}/bin/rls")
      '';
    };

    ob-plantuml = {
      config = ''
        (setq org-plantuml-jar-path "${pkgs.plantuml}/lib/plantuml.jar")
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

    ripgrep = {
      config = ''
        (setq ripgrep-executable "${pkgs.ripgrep}/bin/rg")
      '';
    };
  };
}
