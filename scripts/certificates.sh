#!/bin/bash

# COPYRIGHT @niterfjord @jobbedefeyter

if ! [ -d "/var/log/niterfjord" ] ; then
    mkdir /var/log/niterfjord
fi
if ! [ -d "/var/log/niterfjord/certbot-renewer" ] ; then
    mkdir /var/log/niterfjord/certbot-renewer
fi

cd=`date +'%Y-%m-%d'`
echo "===== CERTBOT RENEWER ${cd} ====="

systemctl stop nginx
certbot renew
systemctl restart nginx