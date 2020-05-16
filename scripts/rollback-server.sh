#!/usr/bin/env bash

# takes one argument - the time to sync, formatted like YYYY-MM-DD-HH in UTC

sudo service minecraft stop

sudo aws s3 sync s3://owen-sanders-minecraft/backups/world_daily/$1 /minecraft/world

sudo chmod -R ugo+rwx /minecraft # jar needs permissions to get at backup data.


sudo service minecraft start