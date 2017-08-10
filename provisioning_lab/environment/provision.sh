#!/bin/bash

sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y
sudo apt-get install ruby2.4 ruby2.4-dev -y


sudo apt-get install -y dirmngr gnupg
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update
sudo apt-get install -y nginx-extras passenger

sudo gem install bundler

sudo apt-get install rails -y
sudo apt-get install nginx -y 

sudo rm /etc/nginx/sites-available/default
sudo cp ~/app/environment/templates/default /etc/nginx/sites-available/default

sudo rm /etc/nginx/nginx.conf 
sudo cp ~/app/environment/templates/nginx.conf /etc/nginx/nginx.conf

chmod +x ~/app

sudo service nginx reload

