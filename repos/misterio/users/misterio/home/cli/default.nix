{ pkgs, ... }: {
  imports = [
    ./nvim
    ./amfora.nix
    ./bat.nix
    ./fish.nix
    ./git.nix
    ./neofetch.nix
    ./nix-index.nix
    ./pmis.nix
    ./ranger.nix
    ./screen.nix
    ./shellcolor.nix
    ./ssh.nix
    ./starship.nix
  ];
  home.packages = with pkgs; [
    # Cli
    comma
    bottom
    cachix
    exa
    ncdu
    ripgrep
    rnix-lsp
  ];
}
