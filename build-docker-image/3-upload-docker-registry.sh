#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

APP_PATH="hello-python-app/src/"
USERNAME="snehangshuk"
PASSWORDFILE="password.txt"
VERSIONNUM="v1" #Update the version number

cd $APP_PATH
cecho "RED" "cat $PASSWORDFILE | docker login -u $USERNAME"
cat $PASSWORDFILE | docker login -u $USERNAME

echo ""
cecho "RED" "docker tag hello-python:$VERSIONNUM $USERNAME/hello-python:$VERSIONNUM"
docker tag hello-python:$VERSIONNUM $USERNAME/hello-python:$VERSIONNUM

echo ""
cecho "RED" "docker push $USERNAME/hello-python:$VERSIONNUM"
docker push $USERNAME/hello-python:$VERSIONNUM
