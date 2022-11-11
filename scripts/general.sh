#!/bin/bash

# COPYRIGHT @niterfjord @jobbedefeyter

if ! [ -d "/var/log/niterfjord/panel-updater" ] ; then
    mkdir -p /var/log/niterfjord/panel-updater
fi
if ! [ -d "/var/log/niterfjord/wings-updater" ] ; then
    mkdir -p /var/log/niterfjord/wings-updater
fi
if ! [ -d "/var/log/niterfjord/certbot-renewer" ] ; then
    mkdir -p /var/log/niterfjord/certbot-renewer
fi