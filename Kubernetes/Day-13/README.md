# Day-13: Kubernetes Health Probes 🚀


## Overview

Today I learned about Kubernetes Health Probes.

Health Probes are used to check the health status of containers running inside Kubernetes Pods.

Today I implemented:

- Liveness Probe
- Readiness Probe
- Startup Probe


## What are Kubernetes Health Probes?

Kubernetes Health Probes help Kubernetes check whether an application is running correctly.

Types of Probes:

- Liveness Probe: Checks whether the container is alive.
- Readiness Probe: Checks whether the application is ready to receive traffic.
- Startup Probe: Handles applications that take more time to start.


# Practical Implementation


## 1. Implemented Liveness Probe


Created `nginx-liveness.yaml` file with Liveness Probe configuration.


Applied deployment:


kubectl apply -f nginx-liveness.yaml


Checked Pod status:


kubectl get pods


Verified Liveness Probe:


kubectl describe pod nginx-liveness-demo-7ccddcdcf5-zjgj8


Output:


Liveness: http-get http://:80/ delay=10s timeout=1s period=5s #success=1 #failure=3


Verified container health checking using Liveness Probe.


---

## 2. Implemented Readiness Probe


Created `nginx-readiness.yaml` file with Readiness Probe configuration.


Applied deployment:


kubectl apply -f nginx-readiness.yaml


Checked Pod status:


kubectl get pods


Verified Readiness Probe:


kubectl describe pod nginx-readiness-demo-68d77969b-df6zq


Output:


Readiness: http-get http://:80/ delay=5s timeout=1s period=5s #success=1 #failure=3


Verified application readiness check using Readiness Probe.


---

## 3. Implemented Startup Probe


Created `nginx-startup.yaml` file with Startup Probe configuration.


Applied deployment:


kubectl apply -f nginx-startup.yaml


Checked Pod status:


kubectl get pods


Verified Startup Probe:


kubectl describe pod nginx-startup-demo-57859cc976-6hhp8


Output:


Startup: http-get http://:80/ delay=0s timeout=1s period=10s #success=1 #failure=30


Liveness:

http-get http://:80/ delay=5s timeout=1s period=5s #success=1 #failure=3


Readiness:

http-get http://:80/ delay=5s timeout=1s period=5s #success=1 #failure=3


Verified Startup Probe configuration successfully.


---

# Commands Used


Check Kubernetes Nodes:


kubectl get nodes


Apply YAML configuration:


kubectl apply -f filename.yaml


Check Pods:


kubectl get pods


Describe Pod details:


kubectl describe pod <pod-name>


---

# Screenshots


1. 01-kubernetes-node-status.png

2. 02-nginx-liveness-deployment.png

3. 03-nginx-liveness-describe.png

4. 04-nginx-readiness-deployment.png

5. 05-nginx-readiness-describe.png

6. 06-nginx-startup-deployment.png

7. 07-nginx-startup-describe.png

8. 08-final-pods-status.png


# Key Learnings


- Learned Kubernetes Health Probes.
- Learned Liveness Probe implementation.
- Learned Readiness Probe implementation.
- Learned Startup Probe implementation.
- Learned Pod health monitoring using kubectl commands.
- Learned how Kubernetes manages container availability.


# Day-13 Summary


Today I implemented Kubernetes Health Probes using Nginx containers.

I configured Liveness, Readiness, and Startup Probes and verified their working using Kubernetes commands.

These concepts are important for running reliable applications in Kubernetes environments.