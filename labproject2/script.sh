#!/bin/bash

export NEEDRESTART_MODE="a"
apt-get update -y
apt-get upgrade -y
apt-get install -y apache2
apt-get install -y unzip
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip
unzip /tmp/main.zip -d /tmp
cp -r /tmp/linux-site-dio-main/* /var/www/html
rm -rf /tmp/linux-site-dio-main