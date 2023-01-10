#!/bin/sh
apt update
echo "sleep 30 sec for install updates"; sleep 30; echo "start install ruby"
apt install -y ruby-full ruby-bundler build-essential
