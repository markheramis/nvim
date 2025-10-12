#!/bin/bash
set -e

# Install dependencies for Debian/Ubuntu or Arch
if [ -f /etc/lsb-release ] || [ -f /etc/debian_version ]; then
  apt update
  apt install -y php php-cli php-xml php-dom composer
elif [ -f /etc/arch-release ]; then
  pacman -Syu --noconfirm php composer
  sed -i 's/^;extension=mbstring/extension=mbstring/' /etc/php/php.ini
  sed -i 's/^;extension=iconv/extension=iconv/' /etc/php/php.ini
fi

# Clone phpactor repo
git clone https://github.com/phpactor/phpactor.git --depth 1 /opt/phpactor
cd /opt/phpactor

ls -la /opt/phpactor/bin

chmod +x /opt/phpactor/bin/phpactor

composer install

# No sudo in container/CI or root environment, just use ln
ln -sf /opt/phpactor/bin/phpactor /usr/local/bin/phpactor