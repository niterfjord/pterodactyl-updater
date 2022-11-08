#! /bin/bash

systemctl stop nginx
certbot renew --quiet
systemctl restart nginx