if status is-interactive
    fish_vi_key_bindings
    set -u fish_greeting

    # FZF
    # set -x FZF_DEFAULT_OPTS_FILE "/home/ugflows/.config/fzfrc"
    set -x FZF_DEFAULT_OPTS '
        --height 50%
        --layout=reverse
        --border
        --preview="[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || cat {} | head -300"
        --bind="F2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up"
        --no-mouse
        --multi
        --preview-window="hidden:wrap"
    '

    abbr -a ls eza --icons=always --git
    abbr -a k kubectl
    abbr -a h history
    abbr -a gs git status
    abbr -a ga git add
    abbr -a gc git commit
    abbr -a gco git checkout
    abbr -a t tmux new -As
    abbr -a tls tmux ls

    # Starship
    starship init fish | source
end
