#!/bin/bash

#Wget
sudo apt install wget -y

#Chrome
sudo apt update 
sudo apt install wget -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
rm google-chrome-stable_current_amd64.deb

#Webapp Manager
sudo apt update 
wget http://packages.linuxmint.com/pool/main/w/webapp-manager/webapp-manager_1.2.5_all.deb
sudo apt install ./webapp-manager_1.2.5_all.deb -y
rm webapp-manager_1.2.5_all.deb

#Visual Studio Code
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

#Edge
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg

sudo apt update && sudo apt install microsoft-edge-stable

#Snap in Linux Mint
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd

#Engeneering tools
sudo apt install nasm -y
sudo apt install hexyl -y
sudo apt install build-essential -y
sudo apt install vlc -y
sudo apt install telegram-desktop -y
sudo apt install dia -y
sudo apt install neofetch -y
sudo apt install octave -y
apt-cache search openjdk | grep openjdk-17
sudo apt-get install openjdk-17-jre -y
sudo apt-get install openjdk-17-jdk -y

#Brave
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update 
sudo apt install brave-browser -y

#Slimbook AMD Controller
#sudo add-apt-repository ppa:slimbook/slimbook -y
#sudo apt-get update 
#sudo apt-get install slimbookamdcontroller -y

#Slimbook Battery Saver
#sudo add-apt-repository ppa:slimbook/slimbook -y
#sudo apt-get update 
#sudo apt-get install slimbookbattery -y

#Gparted
sudo apt install gparted -y

#Studio OBS
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update
sudo apt install ffmpeg obs-studio -y

#Rar
sudo apt install rar -y

#.Net 6
sudo apt install dotnet6

