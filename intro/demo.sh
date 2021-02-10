#!/bin/bash
set -e 

minikube start --driver=docker
sleep 10
kubectl ctx minikube
kubectl --context=minikube create namespace demo || true
kubectl ns demo
kubectl --context=minikube apply -n demo -f demos/


# start watch get pods in main terminal?

# minikube kind
# yaml
# deployment 
# kubectl get / describe
# nodes
# pods
# services


cd demos

# always do this:
exec zsh
