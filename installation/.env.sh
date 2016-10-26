#!/bin/sh

echo "export LC_ALL=en_US.UTF-8" >> ~/.bash_profile
echo "export LANG=en_US.UTF-8" >> ~/.bash_profile
echo "export TWITTER_CONSUMER_KEY=\"#REPLACE#\"" >> ~/.bash_profile
echo "export TWITTER_CONSUMER_SECRET=\"#REPLACE#\"" >> ~/.bash_profile
echo "export HISTORICAL_PRICING_BASE_URL=\"#REPLACE#\"" >> ~/.bash_profile
echo "export DAILY_PRICING_BASE_URL=\"#REPLACE#\"" >> ~/.bash_profile
echo "export MAIL_USERNAME=\"#REPLACE#\"" >> ~/.bash_profile
echo "export MAIL_PASSWORD=\"#REPLACE#\"" >> ~/.bash_profile
echo "export DB_NAME=\"#REPLACE#\"" >> ~/.bash_profile
echo "export ZMQ_PORT=\"#REPLACE#\"" >> ~/.bash_profile
echo "export API_PORT=\"#REPLACE#\"" >> ~/.bash_profile
echo "export ANN_BASE_PATH=\"/home/ubuntu/ann/\"" >> ~/.bash_profile

source ~/.bash_profile
