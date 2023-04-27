#!/bin/bash
#Jakes Auto-Configuration for Zima Client
useradd -m kiosk-user
apt-get update
apt-get upgrade
apt-get install \
	sudo \
	xorg \
	chromium \
	openbox \
	lightdm \
	openssh-server

rm -rf /etc/lightdm/lightdm.conf
cp ./lightdm.conf /etc/lightdm/lightdm.conf
mkdir -p /home/.config/openbox
cp ./autostart /home/.config/openbox
cp ./grub-backgound.png /boot/grub
sudo update-grub
sudo reboot now
