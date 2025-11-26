{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    fastfetch
    glow
    gh
    claude-code
    devenv
    yamllint
    fd
    ripgrep   
    bat
    bat-extras.core
    eza
    fd
    ripgrep
    tree
    starship
    kubectl
    kubernetes-helm
    kubeseal
    fzf
    tailscale
    pam-reattach
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
