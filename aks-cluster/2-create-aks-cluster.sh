#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

cecho "RED" "az aks create --resource-group myResourceGroup \
--name myAKSCluster --node-count 2 \
--enable-addons monitoring --generate-ssh-keys"
az aks create --resource-group myResourceGroup \
    --name myAKSCluster \
    --node-count 2 \
    --enable-addons monitoring --generate-ssh-keys
