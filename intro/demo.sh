#!/bin/bash
set -e 

minikube start --driver=docker
sleep 10
kubectx minikube
kubectl --context=minikube create namespace demo
kubens demo
kubectl --context=minikube apply -n demo -f demos/

# deployment 
# nodes
# kubectl get / describe
# pods
# services


# always do this:
exec bash
