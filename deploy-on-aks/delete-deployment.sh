#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

USERNAME="snehangshuk"
APP_NAME="hello-python"
DEPLOYNAME="myapp"

cecho "RED" "kubectl delete deployment $DEPLOYNAME"
kubectl delete deployment $DEPLOYNAME

cecho "RED" "kubectl delete service $DEPLOYNAME"
kubectl delete service $DEPLOYNAME
