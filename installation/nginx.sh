#!/bin/sh

echo "Installing nginx..."
apt-get install nginx
ufw allow 'Nginx HTTP'

echo "Configure nginx..."
cp wolfy.com /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/wolfy.com /etc/nginx/sites-enabled/
service nginx reload
