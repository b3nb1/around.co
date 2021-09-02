### Getting started
* ```git clone``` this repository
* ```nix-build -E "with import <nixpkgs> {}; callPackage <your-dir>/around.nix {}"```

##### In case sha does not work:
* ```nix-prefetch-url https://downloads.around.co/Around.AppImage```
* add generated sha to around.nix

###### launch app: 
```./result/bin/around```
