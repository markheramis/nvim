#!/bin/bash

if [ -f /etc/lsb-release ] || [ -f /etc/debian_version ]; then
  apt install -y python3-pylsp
elif [ -f /etc/arch-release ]; then
  pacman -S --noconfirm python-lsp-server
fi