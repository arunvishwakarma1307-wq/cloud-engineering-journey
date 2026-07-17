# Day-14: Kubernetes Resource Management & QoS Classes 🚀


## Overview

Today I learned Kubernetes Resource Management and Quality of Service (QoS) Classes.

In Kubernetes, CPU and Memory resources can be managed using Requests and Limits to control container resource usage.

Today I implemented:

- CPU and Memory Requests
- CPU and Memory Limits
- Burstable QoS Class
- Guaranteed QoS Class
- BestEffort QoS Class


## What are Resource Requests?

Resource Requests define the minimum amount of CPU and Memory required by a container.

Kubernetes uses requests while scheduling Pods on nodes.


## What are Resource Limits?

Resource Limits define the maximum amount of CPU and Memory a container can use.

Limits help prevent a container from consuming all available resources.


## Kubernetes QoS Classes


### Guaranteed

Guaranteed QoS is assigned when CPU and Memory requests are equal to limits.


### Burstable

Burstable QoS is assigned when CPU and Memory requests and limits are defined but different.


### BestEffort

BestEffort QoS is assigned when no CPU and Memory requests or limits are defined.



# Practical Implementation


## 1. Created Resource Deployment


Command:

kubectl apply -f nginx-resource.yaml


Created nginx Deployment with CPU and Memory requests and limits.



## 2. Verified Burstable QoS Class


Command:

kubectl describe pod nginx-resource-demo-8c69b8999-8wv44


Verified resource configuration and QoS Class.


Output:

QoS Class: Burstable



## 3. Created Guaranteed QoS Pod


Command:

kubectl apply -f nginx-guaranteed.yaml


Created Pod with equal CPU and Memory requests and limits.



## 4. Verified Guaranteed QoS Class


Command:

kubectl describe pod nginx-guaranteed-pod


Verified:

QoS Class: Guaranteed



## 5. Created BestEffort QoS Pod


Command:

kubectl apply -f nginx-besteffort.yaml


Created Pod without CPU and Memory requests and limits.



## 6. Verified BestEffort QoS Class


Command:

kubectl describe pod nginx-besteffort-pod


Verified:

QoS Class: BestEffort



## Screenshots

1. 01-resource-deployment.png

2. 02-resource-describe-burstable.png

3. 03-guaranteed-qos.png

4. 04-besteffort-qos.png



# Key Learnings

- Learned Kubernetes Resource Requests and Limits.
- Learned CPU and Memory resource management.
- Learned Kubernetes QoS Classes.
- Learned difference between Guaranteed, Burstable, and BestEffort Pods.


# Day-14 Summary

Today I implemented Kubernetes Resource Management using CPU and Memory Requests and Limits.

I created different QoS Class Pods and verified how Kubernetes manages container resources.