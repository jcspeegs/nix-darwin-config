{ pkgs, lib, ... }: {
  home.stateVersion = "24.05";

  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ( builtins.readFile packages/fish/config.fish );
  };

  programs.git = {
    enable = true;
    userName = "ugflows";
    userEmail = "justin@speegs.com";
    ignores = lib.splitString "\n" (builtins.readFile packages/gitignore);
    extraConfig = {
      init = { defaultBranch = "main"; };
    };
  };

  programs.tmux = {
    enable = true;
    extraConfig = builtins.readFile packages/tmux/tmux.conf
      + builtins.readFile packages/tmux/tmux_airline
;
  };

  xdg.configFile = {
    "bat/config".source = packages/bat/config;
    "fish/functions" = {
      source = packages/fish/functions;
      recursive = true;
    };
    "fzfrc".source = packages/fzfrc;
  };
}

