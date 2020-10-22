#!/bin/bash

APP_PATH="hello-python/src/"

cd $APP_PATH
echo "docker build -f Dockerfile -t hello-python:latest ."
docker build -f Dockerfile -t hello-python:latest .
