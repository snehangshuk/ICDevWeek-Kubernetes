#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

if [ $1 == "--help" ]; then
    cecho "GREEN" "push_registry APP_PATH VERSIONNUM CONTAINERNAME REPONAME"
else  
    APP_PATH=$1
    VERSIONNUM=$2
    CONTAINERNAME=$3
    REPONAME=$4
    cecho "YELLOW" "cd $APP_PATH"
    cd $APP_PATH
    #cecho "RED" "cat $PASSWORDFILE | docker login -u $USERNAME"
    #cat $PASSWORDFILE | docker login -u $USERNAME

    echo ""
    cecho "RED" "docker tag $CONTAINERNAME:$VERSIONNUM $REPONAME:$VERSIONNUM"
    docker tag $CONTAINERNAME:$VERSIONNUM $REPONAME:$VERSIONNUM

    echo ""
    cecho "RED" "docker push $REPONAME:$VERSIONNUM"
    docker push $REPONAME:$VERSIONNUM
fi
