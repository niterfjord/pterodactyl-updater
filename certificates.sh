#! /bin/bash

cd=`date +'%Y-%m-%d'`
fn=`echo $(basename $BASH_SOURCE) | cut -d "." -f 1`
echo "===== ${fn^^} UPDATE ${cd} ====="

systemctl stop nginx
certbot renew --quiet
systemctl restart nginx