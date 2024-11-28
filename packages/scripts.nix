{ pkgs, scripts, arch, ... }: {
  nixpkgs.overlays = [
    scripts.overlays.${arch}.tmux-sessionizer
  ];
  environment.systemPackages = [
    pkgs.tmux-sessionizer
  ];
}
