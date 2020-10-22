#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

cecho "RED" "az aks get-credentials --resource-group myResourceGroup --name myAKSCluster"
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
