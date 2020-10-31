#!/usr/bin/env bash

echo "Install Helm 3"

curl -L https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
sudo yum install -y socat

helm repo add stable https://charts.helm.sh/stable