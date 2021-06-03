#!/bin/bash

# Clone Loconotion & change directory
git clone git@github.com:ecolabardini/loconotion.git

# Copy conf to loconotion folder
cp -R conf/ loconotion/website-conf

# Build loconotion
cd loconotion/
sudo docker-compose build loconotion

# Set website output directory
export LOCONOTION_LOCAL_DIST="${PWD}"

# Create website
sudo -E docker-compose run loconotion website-conf/config.toml
