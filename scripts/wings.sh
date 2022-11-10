#!/bin/bash

# COPYRIGHT @niterfjord @jobbedefeyter

if ! [ -d "/var/log/niterfjord" ] ; then
    mkdir /var/log/niterfjord
fi
if ! [ -d "/var/log/niterfjord/wings-updater" ] ; then
    mkdir /var/log/niterfjord/wings-updater
fi

cd=`date +'%Y-%m-%d'`
echo "===== WINGS UPDATE ${cd} ====="

systemctl stop wings
curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
chmod u+x /usr/local/bin/wings
systemctl restart wings