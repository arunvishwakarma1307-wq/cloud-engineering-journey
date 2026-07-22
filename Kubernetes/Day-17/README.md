# Day-17: Kubernetes Ingress 🌐


## Overview

Today I learned Kubernetes Ingress and implemented HTTP routing using Nginx Ingress Controller.

Today I implemented:

- Enabled Ingress Controller in Minikube
- Created Nginx Deployment
- Created Service
- Created Ingress Rule
- Accessed application through Ingress


# What is Ingress?

Ingress is a Kubernetes object used to manage external HTTP/HTTPS traffic and route requests to services inside the cluster.


## Ingress Flow

Client

↓

Ingress Controller

↓

Ingress Rule

↓

Service

↓

Pod


# Practical Implementation


## 1. Enabled Nginx Ingress Controller

Command:

minikube addons enable ingress


Verified Ingress Controller:

kubectl get pods -n ingress-nginx


## 2. Created Nginx Deployment

Created Nginx Deployment and deployed nginx container inside Kubernetes.


## 3. Created Service

Created ClusterIP Service to connect Ingress with Nginx Pod.


## 4. Created Ingress Rule

Created Ingress resource with host based routing.

Host:

nginx.local


Verified:

kubectl get ingress


## 5. Accessed Application Through Ingress

Configured host mapping and tested Ingress routing.

Verified using:

curl.exe -H "Host: nginx.local" http://127.0.0.1:61570


Received Nginx welcome page successfully.


# Screenshots

1. 01-enable-ingress-controller.png
2. 02-ingress-rule.png
3. 03-ingress-access.png


# Key Learnings

- Learned Kubernetes Ingress concept.
- Learned Ingress Controller usage.
- Learned HTTP traffic routing.
- Learned connecting Ingress with Service and Pod.


# Day-17 Summary

Today I implemented Kubernetes Ingress using Nginx Ingress Controller and successfully routed external traffic to a Kubernetes application.