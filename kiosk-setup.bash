#!/bin/bash
useradd -m kiosk-user
rm /etc/lightdm/lightdm.conf
cp ./lightdm.conf /etc/lightdm/lightdm.conf
mkdir -p /home/kiosk-user/.config/openbox
cp ./autostart /home/kiosk-user/.config/openbox
cp ./grub-background.png /boot/grub
sudo update-grub
reboot now
