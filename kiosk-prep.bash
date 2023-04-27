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
service ssh start
