### Getting started
##### nix-prefetch-url https://downloads.around.co/Around.AppImage
##### nix-build -E "with import <nixpkgs> {}; callPackage <your-dir>/around.nix {}"
##### ./result/bin/around
