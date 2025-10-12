#!/bin/bash

if [ -f /etc/lsb-release ] || [ -f /etc/debian_version ]; then
  apt install -y clangd
elif [ -f /etc/arch-release ]; then
  pacman -S --noconfirm clang
fi