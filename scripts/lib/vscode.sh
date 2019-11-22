#!/usr/bin/env bash

# Reference: https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/how-to-install-visual-studio-code-on-ubuntu-18-04-linux-mint-19-debian-9.html
set -e

apt update && apt install -y curl apt-transport-https
curl -sSL https://packages.microsoft.com/keys/microsoft.asc -o microsoft.asc
apt-key add microsoft.asc
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"  | tee /etc/apt/sources.list.d/vscode.list
apt  update
apt  install -y code
apt clean -y 