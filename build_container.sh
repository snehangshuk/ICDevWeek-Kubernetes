#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

if [ $1 == "--help" ]; then
    cecho "GREEN" "build_container.sh APP_PATH VERSIONNUM CONTAINERNAME"
else
    APP_PATH=$1
    VERSIONNUM=$2
    CONTAINERNAME=$3
    cecho "YELLOW" "cd $APP_PATH"
    cd $APP_PATH

    echo""
    cecho "RED" "docker build -f Dockerfile -t $CONTAINERNAME:$VERSIONNUM ."
    docker build -f Dockerfile -t $CONTAINERNAME:$VERSIONNUM .
fi    
