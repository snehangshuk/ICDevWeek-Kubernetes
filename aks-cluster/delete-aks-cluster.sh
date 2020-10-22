#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh


cecho "RED" "az group delete --name myResourceGroup --yes --no-wait"
az group delete --name myResourceGroup --yes --no-wait
