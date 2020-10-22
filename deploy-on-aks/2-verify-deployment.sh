#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

cecho "RED" "kubectl get deployment"
kubectl get deployment

echo""
cecho "RED" "kubectl get pods"
kubectl get pods

echo ""
cecho "RED" "kubectl get events"
kubectl get events
