#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

cecho "RED" "kubectl get nodes"
kubectl get nodes
