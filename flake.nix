{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    scripts.url = "github:jcspeegs/scripts?ref=multi-arch";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager, scripts }: {
    # $ darwin-rebuild build --flake .
    darwinConfigurations."Jair" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      specialArgs = inputs;
      modules = [
        ./configuration.nix
        home-manager.darwinModules.home-manager {
          home-manager.users.ugflows = import ./home.nix;
          home-manager.backupFileExtension = "bak";
        }
      ];
    };
  };
}
