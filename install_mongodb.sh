#!/usr/bin/env bash

sudo apt update
echo "sleep 30 sec for install updates"; sleep 30;
sudo apt-get install apt-transport-https ca-certificates

wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update
echo "sleep 30 sec for install updates"; sleep 30;
sudo apt install -y mongodb-org
echo "Check mongod status"
sudo systemctl status mongod
echo "Start mongod"
sudo systemctl start mongod
echo "Check mongod status again"
sudo systemctl status mongod
echo "Add mongod to autostart"
sudo systemctl enable mongod

journalctl -xe