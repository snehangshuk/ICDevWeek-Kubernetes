#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

echo ""
cecho "RED" "kubectl config use-context myAKSCluster"
kubectl config use-context myAKSCluster

cecho "RED" "kubectl create ns kubernetes-lab"
kubectl create ns kubernetes-lab

echo ""
cecho "RED" "kubectl config set-context --current --namespace=kubernetes-lab"
kubectl config set-context --current --namespace=kubernetes-lab
