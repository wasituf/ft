{
  description = "Racket flake with sicp and racket-langserver";

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
          racket
        ];

        shellHook = ''
          echo "Installing racket-langserver and SICP package..."
          raco pkg install --auto racket-langserver sicp
          echo "Racket setup complete."
        '';
      };
    };
}
