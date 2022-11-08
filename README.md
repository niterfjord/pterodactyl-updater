# Pterodactyl Updaters

## Crontab Executers

````
sudo crontab -e
````

````
0 0 * * * bash <(curl -s https://niterfjord.be/updaters/pterodactyl/panel.sh) >/dev/null 2>&1
0 0 * * * bash <(curl -s https://niterfjord.be/updaters/pterodactyl/wings.sh) >/dev/null 2>&1
0 0 * * * bash <(curl -s https://niterfjord.be/updaters/certbot/certificates.sh) >/dev/null 2>&1
````