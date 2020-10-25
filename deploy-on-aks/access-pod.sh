#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

PODNAME=$1

cecho "RED" "kubectl exec --stdin --tty $PODNAME -- /bin/bash"
kubectl exec --stdin --tty $PODNAME -- /bin/bash
