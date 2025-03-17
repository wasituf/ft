{
  description = "Wasit's collection of flake templates";

  outputs =
    { self }:
    {
      templates = {
        go = {
          path = ./templates/go;
          description = "Go development environment with go, gopls, git";
        };
        node = {
          lts = {
            path = ./templates/node/lts;
            description = "Node.js LTS version development environment";
          };
          latest = {
            path = ./templates/node/latest;
            description = "Node.js Latest version development environment";
          };
          "22" = {
            path = ./templates/node/22;
            description = "Node.js 22 version development environment";
          };
          "20" = {
            path = ./templates/node/20;
            description = "Node.js 20 version development environment";
          };
        };
        python = {
          path = ./templates/python;
          description = "Python dev environment with python3, uv, virtualenv";
        };
        racket = {
          sicp = {
            path = ./templates/sicp;
            description = "Racket with sicp and tools";
          };
        };
      };
    };
}
