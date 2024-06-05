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
pkg up -y
pkg i -y git
pkg i -y python2
gem install lolcat
sleep 1
echo "Please wait. Be patient."
sleep 1
pip2 install requests
pip2 install bs4
sleep 1
echo "succesfull installed for linux!"
sleep 1
echo -e "$G ██████╗░░█████╗░███╗░░██╗███████╗"
echo -e "$G ██╔══██╗██╔══██╗████╗░██║██╔════╝"
echo -e "$G ██║░░██║██║░░██║██╔██╗██║█████╗░░"
echo -e "$G ██║░░██║██║░░██║██║╚████║██╔══╝░░"
echo -e "$G ██████╔╝╚█████╔╝██║░╚███║███████╗"
echo -e "$G ╚═════╝░░╚════╝░╚═╝░░╚══╝╚══════╝"
echo -e "$G Run command: bash FreeProxy.sh"
