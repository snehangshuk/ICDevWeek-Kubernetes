#!/bin/bash

APP_PATH="hello-python/src/"
USERNAME="snehangshuk"
PASSWORD="**********"

cd $APP_PATH
echo "docker login -u $USERNAME -p PASSWORD"
docker login -u $USERNAME -p $PASWORD

echo "docker tag hello-python:latest $USERNAME/hello-python:latest"
docker tag hello-python:latest $USERNAME/hello-python:latest

echo "docker push $USERNAME/hello-python:latest"
docker push $USERNAME/hello-python:latest
