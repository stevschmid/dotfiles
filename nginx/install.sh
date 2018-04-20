#!/bin/sh

ln -sfv $DOTFILES/nginx/dev.conf /usr/local/etc/nginx/servers/dev.conf
ln -sfv $DOTFILES/nginx/dnsmasq.conf /usr/local/etc/dnsmasq.conf

if [ ! -d /etc/resolver ]; then
  sudo mkdir -p /etc/resolver
fi

if [ ! -f /etc/resolver/test ]; then
  sudo touch /etc/resolver/test
  echo "nameserver 127.0.0.1" | sudo tee -a /etc/resolver/test
fi
