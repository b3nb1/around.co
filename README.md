[WIP]
### Getting started
* ```git clone``` this repository
* ```nix-build -E "with import <nixpkgs> {}; callPackage <your-dir>/around.nix {}"```

###### In case sha does not work:
* ```nix-prefetch-url https://downloads.around.co/Around.AppImage```
* add generated sha to around.nix

###### launch app: 
```./result/bin/around```

###### add credentials:
* after clicking on google sign in a browser tab will be opened
* choose your account if you have one and provide the path to your executable

###### troubleshotting:
* microphone is not working, try:
```
boot.extraModprobeConfig = ''
  options snd slots=snd-hda-intel
'';
```
configure sound e.g. with pavucontrol
