#!/bin/bash

# Creating variables

# Creating variables to install the following list of programs
bash="at atop htop lynx ninvaders sl xfonts-terminus"
devTools="anjuta bluefish eclipse emacs geany meld netbeans ruby samba vim virtualbox"
emulators="atari800 desmume dolphin-emu dosbox gngb hatari mame mednafen nestopia pcsxr playonlinux scummvm stella visualboyadvance zsnes"
extras="audacity cheese copyq filezilla flameshot gparted grsync hardinfo k3b librecad libreoffice pl plank qalculate software-properties-common recordmydesktop sysinfo vinagre vino vlc xscreensaver xscreensaver-data-extra xscreensaver-gl-extra"
games="0ad alien-arena assaultcube chessx enigma hedgewars lbreakout2 minetest neverball nexuiz nexuiz-server openarena openarena-081-maps openarena-081-players openarena-081-players-mature openarena-081-textures openarena-server sauerbraten steam:i386 wesnoth xmoto"
gamesExtra="armagetronad billard-gl blobwars boswars circuslinux dreamchess extremetuxracer pingus pychess singularity snake4 supertux supertuxkart teeworlds warzone2100 xpenguins"
graphicTools="dia gcolor3 gimp gpick inkscape krita scribus scribus-template"
kids="childsplay gcompris laby tuxmath tuxtype"
msg="cowsay figlet fortune fortunes toilet"
pidgin="pidgin pidgin-data pidgin-encryption pidgin-festival pidgin-librvp pidgin-plugin-pack pidgin-skype pidgin-themes"
systemExtras="aptitude arj gdebi-core libavcodec-extra libdvd-pkg libdvdread4 lunzip lzip p7zip-rar rar sharutils ubuntu-restricted-addons ubuntu-restricted-extras unace"
everything="$bash $devTools $emulators $extras $games $gamesExtra $graphicTools $kids $msg $pidgin $systemExtras"

# Updating system
apt-get update
apt-get upgrade

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
# aircrack
echo "[*] [ $progress/$total ] Installing aircrack-ng"
apt install -y aircrack-ng && ((progress++)) && echo "[*] [ $progress/$total ] aircrack Installed"
# CIFS
echo "[*] [ $progress/$total ] Installing CIFS Utils"
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
echo "[*] [ $progress/$total ] Installing Exfat Utils"
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




# Installing some useful PPA
# Visit website for more information http://www.webupd8.org/
# add-apt-repository ppa:nilarimogard/webupd8
# apt-get update

# Installing  Bash & System Tools
apt-get install "$bash"

# Installing Developer Tools
apt-get install "$devTools"

# Emulators
apt-get install "$emulators"

# Installing Extras
apt-get install "$extras"

# Games
apt-get install "$games"

# Extra Games
apt-get install "$gamesExtra"

# Kids
apt-get install "$kids"

# Installing Bash message
apt-get install "$msg"

# Installing Pidgin Messenger
apt-get install "$pidgin"

# Installing System Extras
apt-get "$systemExtras"

# Installing Graphic Tools
apt-get install "$graphicTools"

# Everything
apt-get install "$everything"

# Installing Wine From Website
# https://wiki.winehq.org/Ubuntu
dpkg --add-architecture i386
sudo wget -nc -O /usr/share/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
apt update
apt install --install-recommends winehq-stable

# Installing Teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt -y install ./teamviewer_amd64.deb


# Installing Android Studio
# Visit website https://developer.android.com/studio/install