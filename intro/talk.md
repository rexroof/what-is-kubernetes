---
title: "what is kubernetes?"
author: Rex Roof - @rexroof
date: 2021-01-01

---
# Kubernetes contained in 5 minutes

in 5 minutes you're going to understand all of kubernetes

yeah, right

---
# kubernetes is a way to orchestrate containers

what is a container?

---
# WHAT IS A KUBERNETES

official definition from kubernetes.io:

Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

* Kubernetes is a container orchestrator.
* Kubernetes is a community.
* Kubernetes is a framework.

---
# kubernetes is an API 

The core of kubernetes is an apiserver backed by etcd.

---

# kubernetes is kubectl

pronounce it how you want, kubectl is the cli toolkit for talking to the apiserver

---

# kubernetes is yaml

yaml can also be json

---

# kubernetes is abstractions

everything in kubernetes is abstracted into some other named concept

---
# kubernetes is nodes

nodes are virtual machines or physical machines, wherever you're running containers

--- 
# kubernetes is pods

pods are the primary workload in kubernetes, they are groups of containers

---
# kubernetes is not pods

another abstraction is used to start pods:
- deployments 
- statefulsets 
- daemonsets 
- ( or jobs )
- ( or even cronjobs )

-- another slide

---
# kubernetes is deployments

tells kubernetes what pods you want running and kubernetes does it for you


---
# kubernetes is in control

using these objects you tell kubernetes what you'd like, and it does it for you

---
# kubernetes does scheduling

controllers in kubernetes use your pod definitions to find nodes to run your containers. 

each pod can define resources it expects to use

---
# kubernetes has labels

every object in kubernetes has a label. 
simple key=value tags that are used to identify objects and group them together.

---
# kubernetes has services

services serve many purposes, including acting as DNS and routing traffic to particular pods

services use labels to route traffic to pods.


---
# kubernetes services do a lot

services can also request load balancers from your cloud provider

---
# kubernetes allows ingress 

ingress is an object that dictates incoming web traffic.

there is no ingress controller by default.


---
# kubernetes is an erector set


it can be put together many different ways

---
# kubernetes is a lot more

everything I mentioned in this talk has exceptions.

---
# kubernetes

grand finale
