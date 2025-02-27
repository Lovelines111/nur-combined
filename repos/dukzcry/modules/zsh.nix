{ config, lib, pkgs, options, ... }:

with lib;
let
  cfg = config.services.zsh;
in {
  options.services.zsh = {
    enable = mkEnableOption "zsh";
  };

  config = mkIf cfg.enable {
    users.defaultUserShell = pkgs.zsh;
    programs.zsh.enable = true;
    programs.zsh.histSize = 1000000;
    programs.zsh.autosuggestions.enable = true;
    programs.zsh.syntaxHighlighting.enable = true;
    programs.zsh.setOptions = options.programs.zsh.setOptions.default ++ [ "HIST_IGNORE_ALL_DUPS" ];
    programs.zsh.interactiveShellInit = pkgs.nur.repos.dukzcry.lib.mkAfterAfter ''
      source ${pkgs.zsh-history-substring-search}/share/zsh-history-substring-search/zsh-history-substring-search.zsh
      bindkey "$terminfo[kcuu1]" history-substring-search-up
      bindkey "$terminfo[kcud1]" history-substring-search-down
    '';
  };
}
