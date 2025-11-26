function nupd --description "Rebuild nixos, activate the new generation, and make it the default boot entry (without updating flake)"
    set -l config $HOME/projects/nix-darwin-config
    set -l host (prompt_hostname)
    sudo darwin-rebuild switch --flake $config#$host
end
