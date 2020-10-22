#!/bin/bash

echo "az aks create --resource-group myResourceGroup \
--name myAKSCluster --node-count 2 \
--enable-addons monitoring --generate-ssh-keys"
az aks create --resource-group myResourceGroup \
    --name myAKSCluster \
    --node-count 2 \
    --enable-addons monitoring --generate-ssh-keys
