{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bat
    fd
    ripgrep
    tree
    starship
    kubectl
    kubernetes-helm
    kubeseal
    fzf
  ];
}
