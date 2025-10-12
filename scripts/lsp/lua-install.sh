#!/bin/bash
if [ -f /etc/lsb-release ] || [ -f /etc/debian_version ]; then
  apt install -y ninja-build luarocks
elif [ -f /etc/arch-release ]; then
  pacman -S --noconfirm ninja luarocks
fi
luarocks install --server=https://luarocks.org/dev luaformatter
git clone https://github.com/LuaLS/lua-language-server --depth 1 /tmp/lua-language-server
cd /tmp/lua-language-server
./make.sh
mkdir -p /usr/local/lib/lua-language-server
cp -r /tmp/lua-language-server/* /usr/local/lib/lua-language-server/
ln -sf /usr/local/lib/lua-language-server/bin/lua-language-server /usr/local/bin/lua-language-server
chmod +x /usr/local/bin/lua-language-server
rm -rf /tmp/lua-language-server

if [ -f /etc/lsb-release ] || [ -f /etc/debian_version ]; then
  apt remove --purge ninja-build -y
elif [ -f /etc/arch-release ]; then
  pacman -R --noconfirm ninja
fi