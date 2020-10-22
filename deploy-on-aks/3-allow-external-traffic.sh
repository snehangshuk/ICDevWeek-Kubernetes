#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

USERNAME="snehangshuk"
APP_NAME="hello-python"
DEPLOYNAME="myapp"

cecho "RED" "kubectl expose deployment $DEPLOYNAME --type="LoadBalancer" --port=5000"
kubectl expose deployment $DEPLOYNAME --type="LoadBalancer" --port=5000

sleep 60
echo""
cecho "RED" "kubectl get services"
kubectl get services
