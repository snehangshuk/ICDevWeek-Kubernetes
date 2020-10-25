#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

IPADDR="" #Get the IP ADDR
PORT="5000"


cecho "watch -t -d -n 5 curl -s http://$IPADDR:$PORT"
watch -t -d -n 5 curl -s http://$IPADDR:$PORT
