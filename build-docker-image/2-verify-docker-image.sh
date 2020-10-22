#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

APP_PATH="hello-python-app/src/"
VERSIONNUM="v1"

cd $APP_PATH
cecho "RED" "docker run -d -p 5001:5000 hello-python:$VERSIONNUM"
docker run -d -p 5001:5000 hello-python:$VERSIONNUM
