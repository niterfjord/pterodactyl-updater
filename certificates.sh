#!/bin/bash

cd=`date +'%Y-%m-%d'`
echo "===== CERTBOT UPDATE ${cd} ====="

systemctl stop nginx
certbot renew
systemctl restart nginx