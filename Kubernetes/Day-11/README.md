# Day-11: Kubernetes Services 🌐


## Overview

Today I learned about Kubernetes Services and how they provide stable network connectivity to Pods.

Pods are temporary resources and their IP addresses can change when they restart. Kubernetes Services solve this problem by providing a stable network endpoint.


## What is Kubernetes Service?

A Kubernetes Service is an object that exposes applications running on Pods.

Service provides:

- Stable IP address
- Network access
- Load balancing
- Service discovery


## Service Architecture

User

    |

 Service

    |

----------------
|      |       |
Pod-1  Pod-2  Pod-3


## Types of Kubernetes Services


## 1. ClusterIP

ClusterIP is the default Service type.

Features:

- Used for internal communication
- Accessible only inside Kubernetes cluster
- Provides internal IP address


## 2. NodePort

NodePort exposes applications outside the cluster using a port on the Kubernetes Node.

Flow:

Browser

   |

NodePort

   |

Service

   |

Pods


## 3. LoadBalancer

LoadBalancer is mainly used with cloud providers.

Examples:

- AWS
- Azure
- Google Cloud


# Practical Implementation


## 1. Checked Kubernetes Node

Command:

kubectl get nodes

Verified Kubernetes cluster status.


## 2. Created Deployment

Command:

kubectl create deployment nginx-service-demo --image=nginx --replicas=3

Created nginx deployment with 3 replicas.


## 3. Checked Deployment

Command:

kubectl get deployments

Verified deployment status.


## 4. Checked Pods

Command:

kubectl get pods

Verified running nginx Pods.


## 5. Created ClusterIP Service

Command:

kubectl expose deployment nginx-service-demo --port=80

Created ClusterIP Service for internal communication.


## 6. Checked Service Details

Command:

kubectl describe service nginx-service-demo

Checked:

- Service Type
- Cluster IP
- Selector
- Endpoints


## 7. Checked Endpoints

Command:

kubectl get endpoints nginx-service-demo

Verified Pods connected with Service.


## 8. Created NodePort Service

Command:

kubectl expose deployment nginx-service-demo --type=NodePort --port=80 --name=nginx-nodeport-service

Created NodePort Service.


## 9. Accessed Application

Command:

minikube service nginx-nodeport-service --url

Accessed nginx application through browser.


## 10. Scaled Deployment

Command:

kubectl scale deployment nginx-service-demo --replicas=5

Increased Pods from 3 to 5.

Checked that Service automatically updated endpoints.


# Key Learnings

- Learned Kubernetes Services.
- Learned ClusterIP Service.
- Learned NodePort Service.
- Learned Service selectors.
- Learned Endpoints.
- Learned Service based load balancing.
- Learned scaling with Services.


# Screenshots

 1. 01-get-nodes.png
 2. 02-create-deployment.png
 3. 03-get-deployment.png
 4. 04-get-pods.png
 5. 05-clusterip-service.png
 6. 06-describe-service.png
 7. 07-service-endpoints.png
 8. 08-nodeport-service.png
 9. 09-nodeport-browser-access.png
10. 10-scaling-final-endpoints.png


# Day-11 Summary

Today I learned Kubernetes Services and how they provide stable networking for Pods.

I created ClusterIP and NodePort Services, checked endpoints, accessed nginx using NodePort, and tested Service behavior after scaling Pods.