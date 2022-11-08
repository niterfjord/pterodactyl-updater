#! /bin/bash

certbot renew --quiet --deploy-hook
systemctl restart nginx