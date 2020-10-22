#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

cecho "RED" "az aks get-versions --location southeastasia --output table"
az aks get-versions --location southeastasia --output table
