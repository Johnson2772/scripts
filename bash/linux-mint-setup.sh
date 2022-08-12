#!/bin/bash

# Setting up my Linux Desktop Environment.
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
apt install -y mintupgrade
sudo mintupgrade
apt-get dist-upgrade && apt update && apt upgrade && ((progress++))
echo "[*] [$progress/$total] Finishing Upgrade"

# Install new HAL9000 cow
echo "[*] [ $progress/$total ] Installing HAL9000"
wget -q -O HAL9000.cow https://github.com/Johnson2772/scripts/tree/main/bash/preferences/HAL9000/HAL9000.cow
wget -q -O hal9000.cow https://github.com/Johnson2772/scripts/tree/main/bash/preferences/HAL9000/hal9000.cow
cp -R ~/Downloads/*9000.cow /usr/share/cowsay/cows/