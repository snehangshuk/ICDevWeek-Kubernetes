#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

USERNAME="snehangshuk"
APP_NAME="hello-python"
DEPLOYNAME="myapp"

cecho "RED" "kubectl scale deployment $DEPLOYNAME --replicas=4"
kubectl scale deployment $DEPLOYNAME --replicas=4

echo""
cecho "RED" "kubectl get deployment"
kubectl get deployment
