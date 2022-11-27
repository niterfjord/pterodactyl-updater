#!/bin/bash

# COPYRIGHT @niterfjord @jobbedefeyter

cd=`date +'%Y-%m-%d'`
echo "===== CERTBOT RENEWER ${cd} ====="

systemctl stop nginx
certbot renew
systemctl restart nginx