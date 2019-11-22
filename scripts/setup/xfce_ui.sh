#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Xfce4 UI components"
apt-get update 
apt-get install -y supervisor xfce4 xfce4-terminal xfce4-goodies xterm
apt-get purge -y pm-utils xscreensaver*
apt clean -y 

echo "Install Flat-Remix-Gtk theme and icons"
# add-apt-repository ppa:daniruiz/flat-remix && apt-get update && apt-get install flat-remix-gtk
cd $HOME && git clone https://github.com/daniruiz/flat-remix-gtk && \
git clone https://github.com/daniruiz/flat-remix.git && \
mkdir -p $HOME/.icons && mkdir -p $HOME/.themes && \
cp -r $HOME/flat-remix/Flat-Remix* ~/.icons/ && cp -r $HOME/flat-remix-gtk/Flat-Remix-GTK* $HOME/.themes/ && \
rm -rf $HOME/flat-remix && rm -rf $HOME/flat-remix-gtk 