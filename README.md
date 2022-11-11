# Pterodactyl Updaters

## Crontab Executers

````
sudo crontab -e
````

````
0 0 * * * curl -sL https://niterfjord.be/updaters/pterodactyl/panel.sh | bash > /var/log/niterfjord/panel-updater/panel-updater-$(date +%F).log 2>&1
0 0 * * * curl -sL https://niterfjord.be/updaters/pterodactyl/wings.sh | bash > /var/log/niterfjord/wings-updater/wings-updater-$(date +%F).log 2>&1
0 0 * * * curl -sL https://niterfjord.be/updaters/certbot/certificates.sh | bash > /var/log/niterfjord/certbot-renewer/certbot-renewer-$(date +%F).log 2>&1
````