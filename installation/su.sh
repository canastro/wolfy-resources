#!/bin/sh
echo "Updating and installing essentials..."
apt-get update -y
apt-get upgrade -y
apt-get install build-essential libssl-dev -y

echo "Installing htop..."
apt-get install htop

echo "Installing git..."
apt-get install git -y

echo "Installing  libsodium..."
git clone git://github.com/jedisct1/libsodium.git
cd libsodium
./autogen.sh
./configure && make check sudo make install sudo ldconfig

echo "Installing zeromq...."
sudo apt-get install libtool pkg-config build-essential autoconf automake -y
sudo apt-get install libzmq-dev -y
wget http://download.zeromq.org/zeromq-4.1.2.tar.gz
tar -xvf zeromq-4.1.2.tar.gz
cd zeromq-4.1.2
./autogen.sh
./configure --without-libsodium && make check sudo make install sudo ldconfig
