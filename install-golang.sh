#!/usr/bin/env bash

echo "Install golang"

echo PAUL1
wget https://golang.org/dl/go1.14.6.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.6.linux-amd64.tar.gz
rm go1.14.6.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
export PATH=$PATH:/usr/local/go/bin
echo PAUL2
go version
echo PAUL3
go mod init terratest-module
echo PAUL4
