#!/bin/bash

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput xserver-xorg

#Qtile essential packages and 
sudo apt update
sudo apt install -y python3-full python3-pip libpangocairo-1.0-0 python3-cffi python3-xcffib
pip install --no-cache-dir cairocffi --break-system-packages 

#INSTALLING QTILE AND LIGHTDM

# Installing Lightdm
sudo apt update
sudo apt install lightdm -y
sudo systemctl enable lightdm

# Clone the Qtile Source Code from GitHub
git clone https://github.com/qtile/qtile.git

# Install Qtile
cd qtile
pip install . --break-system-packages

# Adding qtile.desktop to Lightdm xsessions directory
# Xsessions Desktop file
cat > ./temp << "EOF"
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Type=Application
Keywords=wm;tiling
EOF

sudo cp ./temp /usr/share/xsessions/qtile.desktop
sudo echo "Exec=/home/$USER/.local/bin/qtile start" | sudo tee -a /usr/share/xsessions/qtile.desktop

# Cleanup
rm ./temp

printf "\e[1;32mDONE!reboot and Enjoy Your Qtile\e[0m\n"
