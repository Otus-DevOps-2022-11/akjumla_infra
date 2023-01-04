#!/usr/bin/env bash
sudo apt update
sudo apt-get install apt-transport-https ca-certificates
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
echo "Check mongod status"
sudo systemctl status mongod
echo "Start mongod"
sudo systemctl start mongod
echo "Check mongod status again"
sudo rm -rf /var/lib/mongodb/mongod.lock
sudo service mongodb restart
echo "Add mongod to autostart"
sudo systemctl enable mongod
