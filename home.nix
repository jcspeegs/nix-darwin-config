{ pkgs, lib, ... }: {
  home.stateVersion = "24.05";

  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs.git = {
    enable = true;
    ignores = lib.splitString "\n" (builtins.readFile packages/gitignore);
    settings = {
      user = {
        name = "ugflows";
        email = "justin@speegs.com";
      };
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

