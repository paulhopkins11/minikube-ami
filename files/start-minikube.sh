#!/usr/bin/env bash

# This script needs to be run as root.
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

export CHANGE_MINIKUBE_NONE_USER=true
minikube start --vm-driver=none

echo "You can verify this is installed correctly using:"
echo "kubectl run --generator=run-pod/v1 kubetest -it --rm --image busybox:latest --command -- /bin/sh"