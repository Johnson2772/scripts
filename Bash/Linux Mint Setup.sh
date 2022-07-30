#!/bin/bash

# Setting up my Linux Desktop Environment.
# Declaring some variables.
apps="/tmp/apps"
progress=1
total=50

cd $(dirname "$0") 
if [ ! -d "$apps" ]; then
	mkdir "$apps"
fi

# Updating and Upgrading Linux Mint System
# Installing some necesary software to Linux Mint
echo "Hello World!"
apt install -y aptitude git
echo "[*] Updating Linux Mint System Software"
apt update && sudo apt upgrade -y
echo "[*] Updating repository"
apt update
echo "[*] Installing missing dependencies"
apt install -f -y
cho "[*] Upgrading"
# mintupgrade check
apt-get dist-upgrade

apt update && apt upgrade && (( progress++))

# Installs Cerebro from deb package
echo "[*] [ $progress/$total ] Installing cerebro"
cerebro="cerebro.deb"
if [ ! -f "$apps/$cerebro" ] ; then
    wget -q -O $apps/$cerebro https://github.com/cerebroapp/cerebro/releases/download/v0.5.0/cerebro_0.5.0_amd64.deb
    sudo dpkg -i $apps/$cerebro && ((progress++)) && echo "[*] [ $progress/$total ] Cerebro Installed"
    rm $apps/$cerebro
else
    sudo dpkg -i $apps/$cerebro
    (( progress++ ))
    echo "[*] [ $progress/$total ] Cerebro Installed"
	rm $apps/$cerebro
fi