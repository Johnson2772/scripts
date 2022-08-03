#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

# Install Wine From Website
# https://wiki.winehq.org/Ubuntu

# Extras 
sudo apt-get install cheese copyq pl filezilla flameshot gparted grsync hardinfo librecad libreoffice k3b plank qalculate recordmydesktop sysinfo vinagre vino vlc xscreensaver xscreensaver-gl-extra xscreensaver-data-extra 

# System Extras
sudo apt-get install exfat-fuse exfat-utils gdebi-core libavcodec-extra libdvdread4 libdvd-pkg ubuntu-restricted-addons ubuntu-restricted-extras unace p7zip-rar sharutils rar arj lunzip lzip
		
# Developer Tools
sudo apt-get install bluefish anjuta eclipse emacs geany meld netbeans rar ruby samba vim virtualbox

# Graphic Tools
sudo apt-get install dia gimp gpick krita inkscape scribus scribus-template gcolor3

# Android Studio
# https://developer.android.com/studio/install

# Pidgin Messenger
sudo apt-get install pidgin pidgin-data pidgin-encryption pidgin-encryption pidgin-librvp pidgin-festival pidgin-festival pidgin-plugin-pack pidgin-skype pidgin-themes

# Gnome
sudo apt-get install gnome-system-monitor gnome-pie

# Bash & System Tools
sudo apt-get install atop htop lynx ninvaders sl at aptitude xfonts-terminus vino.

# Bash message
sudo apt-get install figlet toilet cowsay fortune fortunes
# Install new HAL9000 cow
# Download
# https://drive.google.com/drive/folders/0B_OCch-YoDkXYm5xSWVUbGF2Qm8
sudo cp ~/Downloads/hal9000.cow /usr/share/cowsay/cows/

# Automatic Shutdown
# gedit /etc/crontab:
# 00 21 * * * root shutdown -h now
# Cron Format:
# MM HH DD OO WW command
# MM: Minute, 0-59
# HH: 24-hour hour
# DD: Day of month
# OO: Month
# WW: Day of Week (Sunday is 0, Monday is 1)
# command: Self-explanatory

# Games
sudo apt-get install 0ad alien-arena assaultcube chessx enigma hedgewars lbreakout2 minetest neverball nexuiz nexuiz-server openarena openarena-081-maps openarena-081-players openarena-081-players-mature openarena-081-textures openarena-server sauerbraten steam:i386 wesnoth xmoto

# Extra Games
sudo apt-get install armagetronad billard-gl blobwars boswars circuslinux dreamchess extremetuxracer pingus pychess singularity snake4 supertux supertuxkart teeworlds warzone2100 xpenguins

# Emulators
sudo apt-get install atari800 desmume dolphin-emu dosbox gngb hatari mame mednafen nestopia pcsxr playonlinux scummvm stella visualboyadvance zsnes

# Kids
sudo apt-get install childsplay gcompris laby tuxmath tuxtype

## PPA
http://www.webupd8.org/p/ubuntu-ppas-by-webupd8.html

# Everything
sudo apt-get install 