#! /bin/bash

cd=`date +'%Y-%m-%d'`
fn=`echo $(basename $BASH_SOURCE) | cut -d "." -f 1`
echo "===== ${fn^^} UPDATE ${cd} ====="

systemctl stop wings
curl -L -o /usr/local/bin/wings "https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_$([[ "$(uname -m)" == "x86_64" ]] && echo "amd64" || echo "arm64")"
chmod u+x /usr/local/bin/wings
systemctl restart wings