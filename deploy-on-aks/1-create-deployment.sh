#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

USERNAME="snehangshuk"
APP_NAME="hello-python"
VERSIONNUM="v1"
DEPLOYNAME="myapp"

DOCKERIMAGE="$USERNAME/$APP_NAME:$VERSIONNUM"

cecho "RED" "kubectl create deployment $DEPLOYNAME --image $DOCKERIMAGE"
kubectl create deployment $DEPLOYNAME --image $DOCKERIMAGE
