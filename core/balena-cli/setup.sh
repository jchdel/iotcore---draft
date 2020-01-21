#!/bin/sh
cd /tmp
wget https://github.com/balena-io/balena-cli/releases/download/v11.21.7/balena-cli-v11.21.7-linux-x64-standalone.zip 
unzip balena-cli-v11.21.7-linux-x64-standalone.zip
mv balena-cli /usr/local/share/
ln -s /usr/local/share/balena-cli/balena /usr/local/bin/
ln -s /usr/local/share/balena-cli/xdg-open /usr/local/bin/
apt-get install -y docker.io
