{
  description = "Go flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    gomod2nix = {
      url = "github:tweag/gomod2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      gomod2nix,
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ gomod2nix.overlays.default ];
      };
      goPackage = pkgs.buildGoApplication {
        pname = "app-name";
        version = "0.1.0";
        src = ./.;
        modules = ./gomod2nix.toml;
        nativeBuildInputs = with pkgs; [
          # pkg-config
        ];
        buildInputs = with pkgs; [
          # gtk3
          # glib
          # cairo
        ];
      };
    in
    {
      packages.${system}.default = goPackage;
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = with pkgs; [
          git
          go
          gopls
          gotestsum
          gomod2nix.packages.${system}.default

          # gtk3
          # glib
          # cairo
          # pkg-config
        ];
      };
    };
}
