{ stdenv, lib
, buildFHSUserEnv
, appimageTools
, pkgs
, fetchurl
, autoPatchelfHook
, gsettings-desktop-schemas, gtk3
}:

appimageTools.wrapType2 {
    name = "around"; 
    src = fetchurl { 
        url =  https://downloads.around.co/Around.AppImage;
        sha256 = "0apcsjgvb20bq790rj1n7dvi5nd91x1gkjbg3qddca6my3f9l9lm";
      };

    profile = ''
      export XDG_DATA_DIRS=${gsettings-desktop-schemas}/share/gsettings-schemas/${gsettings-desktop-schemas.name}:${gtk3}/share/gsettings-schemas/${gtk3.name}:$XDG_DATA_DIRS 
      '';
    
    extraPkgs = pkgs: (with pkgs; 
    [
     cmake
     gcc
     glib
     nss
     nspr
     atk
     at-spi2-atk
     dbus
     libdrm
     gdk-pixbuf
     pango
     cairo 
     libxkbcommon
     mesa
     alsaLib
     cups
     at-spi2-core
     expat
    ]) ++ (with pkgs.xorg;
    [ 
     libxshmfence
     libX11
     libXcomposite
     libXdamage
     libXext
     libXfixes
     libXrandr
     libxcb
    ]); 
  
    meta = with stdenv.lib; {
        homepage = "around.co";
        description = "gmeet like video calls";
  };
}

