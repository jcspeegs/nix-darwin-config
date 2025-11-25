args@{ pkgs, self, ... }: {
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget

  imports = [
    packages/systemPackages.nix
    packages/vim/vim.nix
    packages/fish/fish.nix
    ( import packages/scripts.nix ( args // { arch = "aarch64-darwin"; } ) )
  ];

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Allow unfree
  nixpkgs.config.allowUnfree = true;

  # Enable alternative shell support in nix-darwin.
  # programs.fish.enable = true;

  # Set Git commit hash for darwin-version.
  system.configurationRevision = self.rev or self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";

  # Unlock sudo via fingerprint
  security.pam.services.sudo_local.touchIdAuth = true;

  users.users."ugflows" = {
      name = "ugflows";
      home = "/Users/ugflows";
    };
}
