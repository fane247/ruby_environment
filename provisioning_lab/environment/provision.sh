#!/usr/bin/env bash

sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install ruby2.4 -y
sudo gem install bundler
sudo gem install rake
sudo apt-get install ruby2.4-dev -y	
sudo apt-get install build-essential -y	
sudo apt-get install libxml2-dev libgmp-dev zlib1g-dev -y
sudo gem install rails
sudo apt-get install nginx -y
sudo apt-get install nodejs -y
sudo rm /etc/nginx/sites-available/default
sudo cp ~/app/environment/templates/default /etc/nginx/sites-available/default
sudo service nginx reload 





