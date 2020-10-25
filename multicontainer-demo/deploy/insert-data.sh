#!/bin/bash

PODNAME=$1
ID=$2
NAME=$3

kubectl exec $PODNAME -c python -- curl -i -H "Content-Type: application/json" -X POST -d '{"uid": "4", "user":"Somangshu Karmakar"}' http://localhost:8001/users/add
