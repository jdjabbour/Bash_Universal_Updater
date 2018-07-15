#!/bin/bash

cd /etc

## Bash Script that updates depending on the OS

#Arch
if [ -d /etc/pacman.d  ]
then
	sudo pacman -Syu
fi

# Debian
if [ -d /etc/apt  ]
then
	sudo apt-get update && sudo apt-get upgrade -y
fi

# Fedora
if [ -d /etc/dnf  ]
then
	sudo dnf update
fi

# Yum
if [ -d /etc/yum  ]
then
	sudo yum update
fi


