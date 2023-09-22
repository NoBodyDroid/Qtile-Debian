#!/bin/bash

#just change the package name and you can delete it if you dont need it)

#ability to add repositories in debian (nonfree,...)
sudo apt update
sudo apt install software-properties-common

# PACKAGE INCLUDES build-essential
sudo apt install -y build-essential

# Neofetch/HTOP
sudo apt install -y neofetch

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Microcode for Intel/AMD
#AMD
sudo apt install -y amd64-microcode
#Intel
sudo apt install -y intel-microcode

#Bluetooth
sudo apt install -y bluez blueman
sudo systemctl enable bluetooth

#File Manager (thunar,Dolphin)
sudo apt install -y thunar

# Terminal Emulator (eg. terminator,kitty)
sudo apt install -y alacritty

#Browser (chrome,...)
sudo apt install -y firefox-esr

# Installation for Appearance management
sudo apt install -y lxappearance 

#Command Line text editor (micro is also good)
sudo apt install -y vim
