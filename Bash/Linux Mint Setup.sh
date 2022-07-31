#!/bin/bash

# Setting up my Linux Desktop Environment.
# Declaring some variables.
apps="/tmp/apps"
progress=1
total=50

# Creating directory if doesn't exist.
cd "$(dirname "$0")" || exit 
if [ ! -d "$apps" ]; then
	mkdir "$apps"
fi

# Updating and Upgrading Linux Mint System.
# Installing it necessary software to begin with.
echo "Hello World!"
echo "[*] [$progress/$total] Installing necesary Software"
apt install -y aptitude git x11-apps
echo "[*] [$progress/$total] Updating Linux Mint System Software"
apt update && apt upgrade -y
echo "[*] [$progress/$total] Updating repository"
apt update
echo "[*] [$progress/$total] Installing missing dependencies"
apt install -f -y
echo "[*] [$progress/$total] Upgrading"
# mintupgrade check
apt-get dist-upgrade && apt update && apt upgrade && ((progress++))

# Installs Cerebro from deb package
echo "[*] [$progress/$total] Installing cerebro"
cerebro="cerebro.deb"
if [ ! -f "$apps/$cerebro" ] ; then
    wget -q -O $apps/$cerebro https://github.com/cerebroapp/cerebro/releases/download/v0.5.0/cerebro_0.5.0_amd64.deb
    dpkg -i $apps/$cerebro
    ((progress++))
    echo "[*] [$progress/$total] Cerebro Installed"
else
    dpkg -i $apps/$cerebro
    ((progress++))
    echo "[*] [$progress/$total] Cerebro Installed"
	rm $apps/$cerebro
fi

# Installing Software from repositories.
# Extras
echo "[*] [ $progress/$total ] Installing Extras"
sudo apt install -y software-properties-common && ((progress++)) && echo "[*] [ $progress/$total ] Installed software-properties-common"
# aircrack
echo "[*] [ $progress/$total ] Installing aircrack-ng"
apt install -y aircrack-ng && ((progress++)) && echo "[*] [ $progress/$total ] aircrack Installed"
# audacity
echo "[*] [ $progress/$total ] Installing audacity"
sudo apt install -y audacity && ((progress++)) && echo "[*] [ $progress/$total ] audacity Installed"
# CIFS
echo "[*] [ $progress/$total ] Installing samba tools"
sudo apt install -y cifs-utils && ((progress++)) && echo "[*] [ $progress/$total ] CIFS Installed"
# Darktable
echo "[*] [ $progress/$total ] Installing darktable"
sudo add-apt-repository -y ppa:pmjdebruijn/darktable-release
sudo apt update
sudo apt install -y darktable && ((progress++)) && echo "[*] [ $progress/$total ] darktable Installed"
# Emacs
echo "[*] [ $progress/$total ] Installing Emacs"
sudo apt install -y emacs && ((progress++)) && echo "[*] [ $progress/$total ] Emacs Installed"
# exfat
echo "[*] [ $progress/$total ] Installing exfat-utils"
sudo apt install -y exfat-utils && ((progress++)) && echo "[*] [ $progress/$total ] exfat-utils Installed"
# Gitg
echo "[*] [ $progress/$total ] Installing gitg"
sudo apt install -y gitg && ((progress++)) && echo "[*] [ $progress/$total ] Gitg Installed"
# Glances
echo "[*] [ $progress/$total ] Installing glances"
sudo apt install -y glances && ((progress++)) && echo "[*] [ $progress/$total ] glances Installed"
# iftop
echo "[*] [ $progress/$total ] Installing iftop"
sudo apt install -y iftop && ((progress++)) && echo "[*] [ $progress/$total ] iftop Installed"
# Inkscape
echo "[*] [ $progress/$total ] Installing Inkscape"
sudo apt install -y inkscape && ((progress++)) && echo "[*] [ $progress/$total ] Inkscape Installed"
# iotop
echo "[*] [ $progress/$total ] Installing iotop"
sudo apt install -y iotop && ((progress++)) && echo "[*] [ $progress/$total ] iotop Installed"
# LibreOffice Styles
echo "[*] [ $progress/$total ] Installing LibreOffice Styles"
sudo apt install -y libreoffice-style-sifr && ((progress++)) && echo "[*] [ $progress/$total ] LibreOffice Styles Installed"
# lm-sensors
echo "[*] [ $progress/$total ] Installing lm-sensors"
sudo apt install -y lm-sensors && ((progress++)) && echo "[*] [ $progress/$total ] lm-sensors Installed"
# nmap
echo "[*] [ $progress/$total ] Installing nmap"
sudo apt install -y nmap && ((progress++)) && echo "[*] [ $progress/$total ] nmap Installed"
# npm
echo "[*] [ $progress/$total ] Installing nmp"
sudo apt install -y nmp && ((progress++)) && echo "[*] [ $progress/$total ] nmp Installed"
# OpenVPN
echo "[*] [ $progress/$total ] Installing OpenVPN"
sudo apt install -y openvpn && ((progress++)) && echo "[*] [ $progress/$total ] OpenVPN Installed"
# Plank
echo "[*] [ $progress/$total ] Installing Plank"
sudo apt install -y plank && ((progress++)) && echo "[*] [ $progress/$total ] Plank Installed"
# Remmina
echo "[*] [ $progress/$total ] Installing remmina"
sudo apt install -y remmina && ((progress++)) && echo "[*] [ $progress/$total ] Remmina Installed"
# Stacer
echo "[*] [ $progress/$total ] Installing Stacer"
sudo apt install -y stacer && ((progress++)) && echo "[*] [ $progress/$total ] stacer Installed"
# Tmux
echo "[*] [ $progress/$total ] Installing tmux"
sudo apt install -y tmux && ((progress++)) && echo "[*] [ $progress/$total ] Tmux Installed"
# Veracrypt
echo "[*] [ $progress/$total ] Installing Veracrypt"
sudo add-apt-repository -y ppa:unit193/encryption
sudo apt update
sudo apt install -y veracrypt && ((progress++)) && echo "[*] [ $progress/$total ] Veracrypt Installed"
# VLC
echo "[*] [ $progress/$total ] Installing VLC"
sudo apt install -y vlc && ((progress++)) && echo "[*] [ $progress/$total ] VLC Installed"
# WireShark
echo "[*] [ $progress/$total ] Installing WireShark"
sudo apt install -y wireshark && ((progress++)) && echo "[*] [ $progress/$total ] WireShark Installed"
# x2go
echo "[*] [ $progress/$total ] Installing x2go"
sudo apt install -y x2goclient && ((progress++)) && echo "[*] [ $progress/$total ] x2go Installed"

# Installing Capitaine Icon Theme & Cursor
icons=$HOME/.icons
capitaine=$icons/la-capitaine-icon-theme
capitaineCursor=$icons/capitaine-cursors
if [ ! -f "$capitaine" ] ; then
    # Downloading Theme & Cursor
    cd $icons || exit
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