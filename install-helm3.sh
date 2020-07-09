#!/usr/bin/env bash

echo "Install Helm 3"

curl -L https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
sudo apt-get install -y socat

helm repo add stable https://kubernetes-charts.storage.googleapis.com/