# Pterodactyl Updaters

## Crontab Executers

````
sudo crontab -e
````

````
0 0 * * * bash <(curl -sL https://niterfjord.be/updaters/pterodactyl/panel.sh) > /var/log/pterodactyl/panel-updater.log 2>&1
0 0 * * * bash <(curl -sL https://niterfjord.be/updaters/pterodactyl/wings.sh) > /var/log/pterodactyl/wings-updater.log 2>&1
0 0 * * * bash <(curl -sL https://niterfjord.be/updaters/certbot/certificates.sh) > /var/log/pterodactyl/certbot-updater.log 2>&1
````