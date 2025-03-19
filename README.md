# Wasit's Flake Templates

This repo is a collection of my most used (and lesser used) flake templates.

---

## Usage

This is the structure of the `nix flake` command with templates:

```sh
nix flake init -t github.com:<user>/<repo>#template
```

You can copy/paste the links from the templates table below to create flakes faster.

---

## Templates

|   Template   | Description                                                                             | Link                                |
| :----------: | :-------------------------------------------------------------------------------------- | :---------------------------------- |
|      Go      | Simple template to install the latest version of go and gopls.                         | `github.com:wasituf/ft#go`          |
|  Node: LTS   | Installs nodePackages.nodejs and biome.                                                            | `github.com:wasituf/ft#node-lts`    |
| Node: Latest | Installs nodePackages_latest.nodejs and biome.                                                     | `github.com:wasituf/ft#node-latest` |
|   Node: 22   | Installs nodejs_22 and biome.                                                                      | `github.com:wasituf/ft#node-22`     |
|   Node: 20   | Installs nodejs_20 and biome.                                                                      | `github.com:wasituf/ft#node-20`     |
|    Python    | Installs python3 (whatever version that might be in nixpkgs), black and uv.                    | `github.com:wasituf/ft#python`      |
| Racket: SICP | Installs racket, and then installs racket-langserver and sicp using `raco pkg install`. | `github.com:wasituf/ft#racket-sicp` |
