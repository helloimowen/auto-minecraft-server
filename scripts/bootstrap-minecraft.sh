#!/usr/bin/env bash

# for initial setup - future servers can be started from s3 backups. 

sudo yum -y install java-1.8.0
sudo mkdir /minecraft
sudo chown -R ec2-user:ec2-user /minecraft
cd /minecraft
aws s3 cp s3://owen-sanders-minecraft/forge-1.15.2-31.1.0-installer.jar /minecraft/forge-1.15.2-31.1.0-installer.jar
java -jar forge-1.15.2-31.1.0-installer.jar --installServer
eula=true' > eula.txt
sudo aws s3 cp s3://owen-sanders-minecraft/minecraft.service /etc/systemd/system/minecraft.service
sudo aws s3 cp /minecraft s3://owen-sanders-minecraft/backups/
sudo systemctl daemon-reload
sudo service minecraft start