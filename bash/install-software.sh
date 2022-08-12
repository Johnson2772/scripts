#!/bin/bash

# Declaring some variables.
apps="/tmp/apps"
progress=1
total=50

# Creating directory if doesn't exist.
cd "$(dirname "$0")" || exit 
if [ ! -d "$apps" ]; then
	mkdir "$apps"
fi

# Creating variables with the following list of programs to install
bash="at atop htop iotop iftop lynx ninvaders sl tmux xfonts-terminus"
devTools="aircrack-ng anjuta bluefish eclipse emacs geany git gitg meld netbeans nmap npm ruby samba vim virtualbox wireshark"
emulators="atari800 desmume dolphin-emu dosbox gngb hatari mame mednafen nestopia pcsxr playonlinux scummvm stella visualboyadvance zsnes"
extras="audacity cheese copyq filezilla flameshot gparted grsync hardinfo k3b librecad libreoffice libreoffice-style-sifr pl plank qalculate software-properties-common recordmydesktop sysinfo vinagre vino vlc xscreensaver xscreensaver-data-extra xscreensaver-gl-extra"
games="0ad alien-arena assaultcube chessx enigma hedgewars lbreakout2 minetest neverball nexuiz nexuiz-server openarena openarena-081-maps openarena-081-players openarena-081-players-mature openarena-081-textures openarena-server sauerbraten steam:i386 wesnoth xmoto"
gamesExtra="armagetronad billard-gl blobwars boswars circuslinux dreamchess extremetuxracer pingus pychess singularity snake4 supertux supertuxkart teeworlds warzone2100 xpenguins"
graphicTools="blender dia gcolor3 gimp gpick inkscape krita scribus scribus-template"
kids="childsplay gcompris laby tuxmath tuxtype"
msg="cowsay figlet fortune fortunes toilet"
pidgin="pidgin pidgin-data pidgin-encryption pidgin-festival pidgin-librvp pidgin-plugin-pack pidgin-skype pidgin-themes"
systemExtras="aptitude arj exfat-utils gdebi-core libavcodec-extra libdvd-pkg libdvdread4 lunzip lzip openvpn p7zip-rar rar sharutils stacer ubuntu-restricted-addons ubuntu-restricted-extras unace x11-apps"
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

# Installing  Bash & System Tools
echo "[*] [$progress/$total] Installing Bash & System Tools"
apt-get install "$bash" && ((progress++)) && echo "[*] [$progress/$total] Bash & System Tools Installed"

# Installing Bash Welcome Message
echo "[*] [$progress/$total] Installing Bash Welcome Message"
apt-get install "$msg" && ((progress++)) && echo "[*] [$progress/$total] Bash Welcome Message Installed"

# Installing Developer Tools
echo "[*] [$progress/$total] Installing Developer Tools"
apt-get install "$devTools" && ((progress++)) && echo "[*] [$progress/$total] Developer Tools Installed"

# Emulators
echo "[*] [$progress/$total] Installing Emulators"
apt-get install "$emulators" && ((progress++)) && echo "[*] [$progress/$total] Emulators Installed"

# Installing Extras
echo "[*] [$progress/$total] Installing Extras"
apt-get install "$extras" && ((progress++)) && echo "[*] [$progress/$total] Extras Installed"

# Games
echo "[*] [$progress/$total] Installing Games"
apt-get install "$games" && ((progress++)) && echo "[*] [$progress/$total] Games Installed"

# Installing Graphic Tools
echo "[*] [$progress/$total] Installing Graphic Tools"
apt-get install "$graphicTools" && ((progress++)) && echo "[*] [$progress/$total] Graphic Tools Installed"

# Extra Games
echo "[*] [$progress/$total] Installing Extra Games"
apt-get install "$gamesExtra" && ((progress++)) && echo "[*] [$progress/$total] Extra Games Installed"

# Kids
echo "[*] [$progress/$total] Installing Kids"
apt-get install "$kids" && ((progress++)) && echo "[*] [$progress/$total] Kids Installed"

# Installing Pidgin Messenger
echo "[*] [$progress/$total] Installing Pidgin Messenger"
apt-get install "$pidgin" && ((progress++)) && echo "[*] [$progress/$total] Pidgin Messenger Installed"

# Installing System Extras
echo "[*] [$progress/$total] Installing System Extras"
apt-get "$systemExtras" && ((progress++)) && echo "[*] [$progress/$total] System Extras Installed"

# Everything
echo "[*] [$progress/$total] Installing Everything"
apt-get install "$everything" && ((progress++)) && echo "[*] [$progress/$total] Everything Installed"













# CIFS
echo "[*] [ $progress/$total ] Installing CIFS Utils"
sudo apt install -y cifs-utils && ((progress++)) && echo "[*] [ $progress/$total ] CIFS Installed"
# Darktable
echo "[*] [ $progress/$total ] Installing darktable"
sudo add-apt-repository -y ppa:pmjdebruijn/darktable-release
sudo apt update
sudo apt install -y darktable && ((progress++)) && echo "[*] [ $progress/$total ] darktable Installed"
# Glances
echo "[*] [ $progress/$total ] Installing glances"
sudo apt install -y glances && ((progress++)) && echo "[*] [ $progress/$total ] glances Installed"
# lm-sensors
echo "[*] [ $progress/$total ] Installing lm-sensors"
sudo apt install -y lm-sensors && ((progress++)) && echo "[*] [ $progress/$total ] lm-sensors Installed"
# Remmina
echo "[*] [ $progress/$total ] Installing remmina"
sudo apt install -y remmina && ((progress++)) && echo "[*] [ $progress/$total ] Remmina Installed"
# x2go
echo "[*] [ $progress/$total ] Installing x2go"
sudo apt install -y x2goclient && ((progress++)) && echo "[*] [ $progress/$total ] x2go Installed"




# Installing some useful PPA
# Visit website for more information http://www.webupd8.org/
# add-apt-repository ppa:nilarimogard/webupd8
# apt-get update


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