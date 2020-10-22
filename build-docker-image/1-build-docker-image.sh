#!/bin/bash

APP_PATH="hello-python-app/src/"
VERSIONNUM="v1"

cd $APP_PATH
echo "docker build -f Dockerfile -t hello-python:$VERSIONNUM ."
docker build -f Dockerfile -t hello-python:$VERSIONNUM .
