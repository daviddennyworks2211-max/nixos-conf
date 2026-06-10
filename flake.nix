{
  description = "A flake for my personal Nix configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
  };

  outputs = { self, nixpkgs, apple-fonts, ... }:
  let
    lib = nixpkgs.lib;
  in {
    nixosConfigurations.nixos = lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit apple-fonts;
      };

      modules = [
        ./configuration.nix
        ./fonts.nix
      ];
    };
  };
}