#!/usr/bin/env bash

echo "Install Packer"
sudo apt-get update
sudo apt-get install -y \
    unzip

wget -O packer_install.zip https://releases.hashicorp.com/packer/1.6.5/packer_1.6.5_linux_amd64.zip
unzip packer_install.zip
sudo mv packer /usr/local/bin/packer