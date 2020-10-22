#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

cecho "RED" "az group create --name myResourceGroup --location southeastasia"
az group create --name myResourceGroup --location southeastasia

