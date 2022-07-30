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
apt install -y aptitude git
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