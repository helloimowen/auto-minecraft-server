#!/usr/bin/env bash

# start server from s3 backup 

sudo yum -y install java-1.8.0

sudo mkdir /minecraft
sudo chown -R ec2-user:ec2-user /minecraft
sudo aws s3 sync s3://owen-sanders-minecraft/backups/state/ /minecraft
cd /minecraft
sudo aws s3 cp s3://owen-sanders-minecraft/code/master/server_files/minecraft.service /etc/systemd/system/minecraft.service

sudo chmod -R ugo+rwx /minecraft # jar needs permissions to get at backup data.

sudo systemctl daemon-reload
sudo service minecraft start

# pull code from s3

cd ..
sudo mkdir /code
sudo chown -R ec2-user:ec2-user /code
sudo aws s3 sync s3://owen-sanders-minecraft/code/master/ /code 
sudo chmod -R +x  /code
cd /code

sudo chmod +x `cat script_manifest.txt`

# install pyenv for python scripts

./scripts/install-python-environment.sh

