#!/bin/bash

CLUSTERNAME="myAKSCluster"
CLUSTERCONTEXT=$CLUSTERNAME

echo "kubectl config delete-cluster $CLUSTERNAME"
kubectl config delete-cluster $CLUSTERNAME

echo""
echo "kubectl config delete-context $CLUSTERCONTEXT"
kubectl config delete-context $CLUSTERCONTEXT
