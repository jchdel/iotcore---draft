#!/bin/sh
apt-get update
apt-get install -y build-essential git curl sudo
adduser balena
usermod -aG sudo balena
apt-get install -y docker.io
usermod -aG docker balena
curl -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-Linux-x86_64 \
     -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
apt-get install -y libssl-dev
apt-get install -y nodejs
apt-get install -y npm
cd /usr/local/src
git clone https://github.com/balena-io/open-balena.git open-balena
cd open-balena
./scripts/quickstart -U jlo@ampard.com -P ****** -d ampard.lab -p
./scripts/compose up -d
