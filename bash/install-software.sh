#!/bin/bash

# Creating variables

# Creating variables to install the following list of programs
bash="at atop htop lynx ninvaders sl xfonts-terminus"
devTools="anjuta bluefish eclipse emacs geany meld netbeans ruby samba vim virtualbox"
emulators="atari800 desmume dolphin-emu dosbox gngb hatari mame mednafen nestopia pcsxr playonlinux scummvm stella visualboyadvance zsnes"
extras="cheese copyq filezilla flameshot gparted grsync hardinfo k3b librecad libreoffice pl plank qalculate recordmydesktop sysinfo vinagre vino vlc xscreensaver xscreensaver-data-extra xscreensaver-gl-extra"
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