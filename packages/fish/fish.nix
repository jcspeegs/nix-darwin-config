{ pkgs, ... }: {
  # https://nixos.wiki/wiki/Fish

  environment.systemPackages = with pkgs; [
    fishPlugins.done
    # fishPlugins.fzf-fish
    fishPlugins.forgit
    fishPlugins.hydro
    fzf
    fishPlugins.grc
    grc
  ];

  # Fish by default
  programs.zsh.interactiveShellInit = "exec fish -l";

  programs.fish = {
    enable = true;
    interactiveShellInit = ( builtins.readFile ./config.fish );
    shellAliases = import ./abbr.nix;
  };

}
