{ pkgs
, flake
, ...
}:
let
  inherit (builtins)
    toString
    readFile
    trace
  ;
  inherit (flake) inputs;
  inherit (pkgs) 
    fetchFromGitHub
    vimPlugins
    fetchurl
    wrapNeovim
    callPackage
    fetchzip
  ;
  inherit (pkgs.vimUtils)
    buildVimPlugin
    buildVimPluginFrom2Nix
  ;
  machNix = import "${inputs.mach-nix}" {inherit pkgs;};
in
let
  pluginNocapsquit = buildVimPlugin {
    name = "nocapsquit";
    src = fetchFromGitHub {
        owner = "lucasew";
        repo = "nocapsquit.vim";
        rev = "4418b78b635e797eab915bc54380a2a7e66d2e84";
        sha256 = "1jwwiq321b86bh1z3shcprgh2xs5n1xjy9s364zxlxy8qhwfsryq";
    };
  };
  pluginIonideVim = buildVimPlugin {
    name = "ionide-vim";
    src = fetchFromGitHub {
      owner = "ionide";
      repo = "ionide-vim";
      rev = "0b688cccdb80598e09cd24cd3537145f8633e051";
      sha256 = "sha256-/CizU/ZeyjN7MM0dMoSAd3nFtOth5U0cUZt0bV0wjIw=";
    };
    dontBuild = true;
    postInstall =
    let
      zip = fetchurl {
        url = "https://github.com/fsharp/FsAutoComplete/releases/download/0.47.2/fsautocomplete.netcore.zip";
        sha256 = "1hf6znwpli8mr9mn0ifx6y0v60mzz76k5md7i80gxc5q8mh636l7";
      };
    in
    ''
      ${pkgs.unzip}/bin/unzip -o -d $out/share/vim-plugins/ionide-vim/fsac ${zip}
      chmod 555 $out/share/vim-plugins/ionide-vim/fsac -R
    '';
  };
  themeStarrynight = buildVimPlugin {
    name = "starrynight";
    src = fetchFromGitHub {
      owner = "josegamez82";
      repo = "starrynight";
      rev = "fcc8776f64061251a73158515a0ce82304fe4518";
      sha256 = "0zspnzgn5aixwcp7klj5vaijmj4ca6hjj58jrz5aqn10dv41s02p";
    };
  };
  themePaper = buildVimPlugin {
    name = "vim-paper";
    src = fetchFromGitHub {
      owner = "YorickPeterse";
      repo = "vim-paper";
      rev = "67763e10371beb56f9059efe257ec2db2fec2848";
      sha256 = "CEPT2LtDc5hKnA7wrdEX6nzik29o6ewUgGvif5j5l+c=";
    };
  };
  themePreto = buildVimPlugin {
    name = "vim-preto";
    src = fetchFromGitHub {
      owner = "ewilazarus";
      repo = "preto";
      rev = "b9200d9a0ff09c4bc8b1cf054f61f12f49438454";
      sha256 = "sha256-N7GLBVxO9FbLqo9FKJJndnHRnekunxwVAjcgu4l8jLw=";
    };
  };
in wrapNeovim pkgs.neovim-unwrapped {
  withPython3 = true;
  extraPython3Packages = p: 
  with p;
  with callPackage ./python.nix p p p; [
    pynvim-pp
    std2
    pyyaml
  ];
  configure = {
    plug.plugins = with vimPlugins; [
      (coq_nvim.overrideAttrs (old: {patches = [ ./coq.patch ]; }))
      # coq_nvim
      dart-vim-plugin
      echodoc
      embark-vim
      emmet-vim
      fennel-vim
      indentLine
      lsp_signature-nvim
      luasnip
      nvim-lspconfig
      nvim-web-devicons
      onedark-vim
      plantuml-syntax
      plenary-nvim # dep of telescope
      popup-nvim # dep of telescope
      telescope-nvim
      vim-commentary
      vim-nix
      vim-startify
      vim-fetch # support for stacktrace paths
      # custom
      pluginNocapsquit
      # pluginIonideVim
      themePaper
      themePreto
      themeStarrynight
    ];
    customRC = ''
    lua << EOF
    ${readFile ./init.lua}
    EOF
    ${readFile ./rc.vim}
    '';
  };
}
