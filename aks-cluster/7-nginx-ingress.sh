#!/bin/bash

#include lib
. ../lib/sh/libfuncs.sh

cecho "GREEN" "# Add the ingress-nginx repository"
cecho "RED" "helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx"
#helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

echo ""
cecho "GREEN" "# Use Helm to deploy an NGINX ingress controller"
cecho "RED" 'helm install nginx-ingress ingress-nginx/ingress-nginx \
    --namespace kubernetes-lab \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set controller.admissionWebhooks.patch.nodeSelector."beta\.kubernetes\.io/os"=linux'
helm install nginx-ingress ingress-nginx/ingress-nginx \
    --namespace kubernetes-lab \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set controller.admissionWebhooks.patch.nodeSelector."beta\.kubernetes\.io/os"=linux

echo ""
cecho "GREEN" "Wait for few seconds"
sleep 30
cecho "RED" "kubectl get services -o wide -w nginx-ingress-ingress-nginx-controller"
kubectl get services -o wide -w nginx-ingress-ingress-nginx-controller
