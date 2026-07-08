# Day-06 Notes: Kubernetes Namespace


## What is Namespace?

Namespace is a way to organize and separate Kubernetes resources inside a cluster.

A single Kubernetes cluster can contain multiple namespaces.


## Default Namespaces

When Kubernetes starts, some namespaces are created automatically:

- default
- kube-system
- kube-public
- kube-node-lease


## Creating Namespace

Command:

kubectl create namespace dev


Created a namespace named:

dev


## Running Pod in Namespace

A pod can be created inside a specific namespace using:

kubectl run nginx-dev --image=nginx -n dev


## Checking Namespace Resources

For a specific namespace:

kubectl get pods -n dev


For all namespaces:

kubectl get pods -A


## Describe Resource

To see detailed information about a pod:

kubectl describe pod nginx-dev -n dev


## What I Learned

- Namespace helps organize Kubernetes resources.
- Resources can be separated using namespaces.
- kubectl commands can target specific namespaces.
- `-n` flag is used to specify a namespace.