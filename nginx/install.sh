#!/bin/sh

if [ ! -f /usr/local/etc/nginx/servers/dev.conf ]; then
  ln -sfv $DOTFILES/nginx/dev.conf /usr/local/etc/nginx/servers/dev.conf
fi

if [ ! -f /usr/local/etc/dnsmasq.conf ]; then
  ln -sfv $DOTFILES/nginx/dnsmasq.conf /usr/local/etc/dnsmasq.conf
fi

if [ ! -d /etc/resolver ]; then
  sudo mkdir -p /etc/resolver
fi

if [ ! -f /etc/resolver/dev ]; then
  sudo touch /etc/resolver/dev
  echo "nameserver 127.0.0.1" | sudo tee -a /etc/resolver/dev
fi
