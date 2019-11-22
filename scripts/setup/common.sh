#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update 
apt-get install -y vim wget net-tools locales bzip2 sudo git apt-utils htop terminator \
     firefox chromium-browser chromium-browser-l10n chromium-codecs-ffmpeg \
     ttf-wqy-zenhei # custom font
apt clean -y

echo "generate locales en_US.UTF-8"
locale-gen en_US.UTF-8

echo "Set Europe Rome Local time"
ln -sf /usr/share/zoneinfo/Europe/Rome /etc/localtime