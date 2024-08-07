#!/bin/bash

G="\033[1;32m"
export G
R="\033[1;31m"
export R
B="\033[1;34m"
export B

clear
sleep 1
echo "Installing packages please wait..."
sleep 1
echo "Installing for Termux..."
sleep 2
cd
pkg i -y git || pacman -S --noconfirm --disable-download-timeout --overwrite="*" --yes git 2>/dev/null
pkg i -y python2 || pacman -S --noconfirm --disable-download-timeout --overwrite="*" --yes python2 2>/dev/null
gem install lolcat
clear
sleep 1
echo "Please wait. Be patient."
sleep 1
clear
pip2 install requests
pip2 install bs4
clear
cd || exit 1
mv Termux-Free-Proxy ~/.Free-Proxy
mkdir -p ~/.bin
echo "export PATH=$HOME/.bin:$PATH" >> ~/.bashrc && . ~/.bashrc
sudo install --mode 0755 -D ~/.Free-Proxy/FreeProxy.sh ~/.bin/freeproxy || install --mode 0755 -D ~/.Free-Proxy/FreeProxy.sh $PREFIX/bin/freeproxy
sleep 1
echo "succesfull installed for linux!"
sleep 1
echo -e "$G ██████╗░░█████╗░███╗░░██╗███████╗"
echo -e "$G ██╔══██╗██╔══██╗████╗░██║██╔════╝"
echo -e "$G ██║░░██║██║░░██║██╔██╗██║█████╗░░"
echo -e "$G ██║░░██║██║░░██║██║╚████║██╔══╝░░"
echo -e "$G ██████╔╝╚█████╔╝██║░╚███║███████╗"
echo -e "$G ╚═════╝░░╚════╝░╚═╝░░╚══╝╚══════╝"
echo -e "$G Run command: bash freeproxy"
