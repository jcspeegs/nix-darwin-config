{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bat
    eza
    fd
    ripgrep
    tree
    starship
    kubectl
    kubernetes-helm
    kubeseal
    fzf
  ];

  # fonts.packages = with pkgs; [
  #   hack-font
  #   # Get nerdfonts override string from:
  #   # https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts
  #   ( nerdfonts.override { fonts = [
  #     "JetBrainsMono"
  #     # "FiraCode"
  #     # "Hack"
  #     # "NerdFontsSymbolsOnly"
  #   ]; } )
  # ];
}
