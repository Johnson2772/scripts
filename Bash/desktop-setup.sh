#!/bin/bash

# Setting up Linux Mint Desktop

# Installing Capitaine Icon Theme & Cursor
progress=1
total=50
apps=/tmp/apps
icons=$HOME/.icons
capitaine=$icons/la-capitaine-icon-theme
capitaineCursor=$icons/capitaine-cursors
if [ ! -f "$capitaine" ] ; then
    # Downloading Theme & Cursor
    cd "$icons" || exit
    git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git la-capitaine-icon-theme
    git clone https://github.com/keeferrourke/capitaine-cursors.git capitaine-cursors
    # Installing Theme
    cd "$capitaine" || exit
    chmod u+x configure
    ./configure
    # Installing Cursor
    cd "$capitaineCursor" || exit
    chmod u+x .build
    ./build.sh
    cd $apps || exit
    ((progress++))
    echo "[*] [$progress/$total] Capitaine Icon Theme & Cursor Installed"
else
    # Installing Theme
    cd "$capitaine" || exit
    chmod u+x configure
    ./configure
    # Installing Cursor
    cd "$capitaineCursor" || exit
    chmod u+x .build
    ./build.sh
    cd $apps || exit
    ((progress++))
    echo "[*] [$progress/$total] Capitaine Icon Theme & Cursor Installed"
fi