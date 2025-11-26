# fish abbreviations
# https://fishshell.com/docs/current/cmds/abbr.html
{
  ls = "eza --icons=always --git";
  # ll = "ls -lrtha";
  ll = "eza -la --icons --git --header";

  h = "history";

  # kubectl
  k = "kubectl";

  # git
  gs = "git status";
  gc = "git commit";
  gco = "git checkout";

  # tmux
  t = "tmux new -As";
  tls = "tmux ls";
}
