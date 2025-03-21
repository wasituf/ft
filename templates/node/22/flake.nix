{
  description = "Node.js 22 version flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = with pkgs; [
          nodejs_22
          biome
          git
        ];
        shellHook = ''
          echo "Configuring biome ..."
          touch biome.jsonc
          curl "https://gist.githubusercontent.com/wasituf/4a449cfa15293cc385cdc94579d1d461/raw/1992e4522ccbc72f93715ec18f10fc3115f05a33/biome.jsonc" biome.jsonc
          echo "Configured biome."

          echo "Configuring .npmrc ..."
          touch .npmrc
          echo "auto-install-peers=true\nnode-linker=hoisted\nlockfile=true" > .npmrc
          echo "Configured .npmrc"
        '';
      };
    };
}
