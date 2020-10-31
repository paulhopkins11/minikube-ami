#!/usr/bin/env bash

echo "Install Terraform"
sudo yum install -y \
    unzip

wget -O terraform_install.zip https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip
unzip terraform_install.zip
sudo mv terraform /usr/local/bin/terraform