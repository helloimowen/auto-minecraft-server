#!/usr/bin/env bash

DATE=`date '+%Y-%m-%d-%H'`

sudo aws s3 sync /minecraft/world s3://owen-sanders-minecraft/backups/world_daily/$DATE
