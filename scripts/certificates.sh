#!/bin/bash

# COPYRIGHT @niterfjord @jobbedefeyter

cd=`date +'%Y-%m-%d'`
echo "===== CERTBOT UPDATE ${cd} ====="

systemctl stop nginx
certbot renew
systemctl restart nginx