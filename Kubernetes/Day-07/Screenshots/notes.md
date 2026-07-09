# Day-07 Notes: Kubernetes Services


## What is Kubernetes Service?

A Kubernetes Service is an object that provides a stable network endpoint to access Pods.

Pods are temporary and their IP addresses can change, but the Service remains constant.


## Why Do We Need Service?

Without a Service:

- Pod IP can change after restart.
- Users cannot reliably access the application.


Service provides:

- Stable IP address
- Load balancing between Pods
- Communication between applications


## NodePort Service

NodePort exposes an application outside the Kubernetes cluster.

It opens a port on the Node and forwards traffic to the Service and Pods.


Flow:

User Browser
      |
      ↓
NodePort Service
      |
      ↓
Deployment
      |
      ↓
Pods


## Commands Learned

kubectl expose deployment

Used to create a Service from a Deployment.


kubectl get services

Used to view available Services.


kubectl describe service

Used to view detailed Service information.


minikube service

Used to open a Service in the browser.


## What I Learned

- Service provides stable access to Pods.
- NodePort allows external access.
- Deployment manages Pods.
- Service connects users with application Pods.