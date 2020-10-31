#!/usr/bin/env bash

echo "Install Docker"
sudo amazon-linux-extras install docker -y

sudo service docker start
sudo systemctl enable docker

# sudo groupadd docker
sudo usermod -aG docker $USER
