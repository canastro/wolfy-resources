#!/bin/sh

echo "Import the public key used by the package management system.¶"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

echo "Create a list file for MongoDB"
sudo echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

echo "Reload local package database"
apt-get update

echo "Install MongoDB..."
apt-get install -y mongodb-org

echo "Start MongoDB..."
service mongod start
