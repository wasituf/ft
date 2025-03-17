# Wasit's Flake Templates

This repo is a collection of my most used (and lesser used) flake templates.

## Templates

|   Template   | Description                                                                             | Command                                               |
| :----------: | :-------------------------------------------------------------------------------------- | :---------------------------------------------------- |
|      Go      | Simple template to install the latest version of go, and gopls.                         | `nix flake init -t github.com:wasituf/ft#go`          |
|    Python    | Installs python3 (whatever version that might be in nixpkgs) and uv.                    | `nix flake init -t github.com:wasituf/ft#python`      |
| Racket: SICP | Installs racket, and then installs racket-langserver and sicp using `raco pkg install`. | `nix flake init -t github.com:wasituf/ft#racket.sicp` |
|  Node: LTS   | Installs nodePackages.nodejs                                                            | `nix flake init -t github.com:wasituf/ft#node.lts`    |
| Node: Latest | Installs nodePackages_latest.nodejs                                                     | `nix flake init -t github.com:wasituf/ft#node.latest` |
|   Node: 22   | Installs nodejs_22                                                                      | `nix flake init -t github.com:wasituf/ft#node.22`     |
|   Node: 20   | Installs nodejs_20                                                                      | `nix flake init -t github.com:wasituf/ft#node.20`     |

---
