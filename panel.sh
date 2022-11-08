#! /bin/bash

cd=`date +'%Y-%m-%d'`
fn=`echo $(basename $BASH_SOURCE) | cut -d "." -f 1`
echo "===== ${fn^^} UPDATE ${cd} ====="

cd /var/www/pterodactyl
php artisan down
curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzv
chmod -R 755 storage/* bootstrap/cache
composer install --no-dev --optimize-autoloader -q
php artisan view:clear
php artisan config:clear
php artisan migrate --seed --force
chown -R www-data:www-data /var/www/pterodactyl/*
php artisan queue:restart
php artisan up