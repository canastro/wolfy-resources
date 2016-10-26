#!/bin/sh

echo "Installing node version..."
curl -sL https://deb.nodesource.com/setup_6.x | -E bash -
apt-get install -y nodejs

echo "Install global node dependencies..."
npm i -g pm2 talib zmq node-sass
