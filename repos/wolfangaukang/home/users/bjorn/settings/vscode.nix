{ pkgs }:

{
  extensions = with pkgs.vscode-extensions; [
    arrterian.nix-env-selector
    gruntfuggly.todo-tree
    hashicorp.terraform
    jnoortheen.nix-ide
    ms-python.python
    timonwong.shellcheck
    viktorqvarfordt.vscode-pitch-black-theme
    vscodevim.vim
    yzhang.markdown-all-in-one
  ];
  settings = {
    "editor.insertSpaces" = false;
    "git.enableCommitSigning" = true;
    "keyboard.dispatch" = "keyCode";
    "python.pythonPath" = "${pkgs.python3}/bin/python3";
    "redhat.telemetry.enabled" = false;
    "todo-tree.general.tags" = [ "BUG" "FIXME" "TODO" ];
    "vim.enableNeovim" = true;
    "vim.neovimPath" = "${pkgs.neovim}/bin/nvim";
    "window.zoomLevel" = -1;
    "window.restoreWindows" = "none";
    "workbench.colorTheme" = "Pitch Black";
    "[python]" = {
      "editor.insertSpaces" = true;
      "editor.tabSize" = 4;
    };
  };
}
