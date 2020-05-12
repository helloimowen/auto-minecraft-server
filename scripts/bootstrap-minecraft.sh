#!/usr/bin/env bash

# for initial setup - future servers can be started from s3 backups. 

sudo yum -y install java-1.8.0
sudo mkdir /minecraft
sudo chown -R ec2-user:ec2-user /minecraft
cd /minecraft
aws s3 cp s3://owen-sanders-minecraft/forge-1.15.2-31.1.0-installer.jar /minecraft/forge-1.15.2-31.1.0-installer.jar
java -jar forge-1.15.2-31.1.0-installer.jar --installServer
echo 'eula=true' > eula.txt
sudo aws s3 cp s3://owen-sanders-minecraft/minecraft.service /etc/systemd/system/minecraft.service
sudo systemctl daemon-reload
sudo service minecraft start

# install pyenv for python scripts

sudo yum -y install git

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile

. ~/.bash_profile

pyenv install 3.8.2

