function nupf --description "Update flake, rebuild nixos, activate the new generation, and make it the default boot entry"
    set -l config /home/ugflows/builds/nix-darwin-config
    set -l host (prompt_hostname)
    nix flake update --commit-lock-file $config
    sudo darwin-rebuild switch --flake $config#$host
end
