function nupt --description "Rebuild nixos and activate the new generation, but don't add it to the bootloader menu"
    set -l config /home/ugflows/builds/nix-darwin-config
    set -l host (prompt_hostname)
    sudo darwin-rebuild test --flake $config#$host
end
