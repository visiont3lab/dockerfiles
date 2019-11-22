#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Kde UI components"
apt-get update 
apt-get install -y supervisor  kde-plasma-desktop xterm
apt-get purge -y pm-utils xscreensaver*
apt clean -y 