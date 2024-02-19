#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y gitk
sudo apt-get install -y curl
sudo apt-get install -y filezilla 
sudo apt-get install -y keepassx
sudo apt-get install -y terminator
sudo apt-get install -y vlc
sudo apt-get install -y nautilus-image-converter
sudo apt-get install -y liquidprompt
sudo apt-get install -y sshpass
sudo apt-get install -y aws-shell
sudo apt-get install -y rename

sudo snap install aws-cli --classic
sudo snap install phpstorm --classic
sudo snap install slack --classic
sudo snap install postman --classic

## Install docker
curl -o- https://raw.githubusercontent.com/rancher/install-docker/master/dist/24.0.7.sh | bash
sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

## Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

## Install LiquidPrompt
mkdir -p ~/Softwares/
git clone git@github.com:nojhan/liquidprompt.git ~/Softwares/liquidprompt
