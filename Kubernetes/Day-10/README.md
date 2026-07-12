# Day-10: Kubernetes Deployment 🚀


## Overview

Today I learned about Kubernetes Deployment and how it manages Pods automatically.

Deployment is used in production environments to manage application replicas, updates, and rollback.


## What is Kubernetes Deployment?

Kubernetes Deployment is an object that manages Pods using ReplicaSet.

Deployment provides:

- Automatic Pod creation
- Replica management
- Rolling updates
- Rollback support


## Deployment Architecture

Deployment

↓

ReplicaSet

↓

Pods


## Practical Implementation


### 1. Checked Kubernetes Node Status

Command:

kubectl get nodes

Checked that the Kubernetes cluster was running successfully.


### 2. Created Deployment

Command:

kubectl create deployment nginx-deployment --image=nginx --replicas=3

Created an nginx Deployment with 3 replicas.


### 3. Checked Deployment

Command:

kubectl get deployments

Verified Deployment status and replicas.


### 4. Checked Deployment Pods

Command:

kubectl get pods

Verified that Deployment created 3 running Pods.


### 5. Described Deployment

Command:

kubectl describe deployment nginx-deployment

Checked Deployment details:

- Replicas
- Strategy Type
- Image
- ReplicaSet


### 6. Scaled Deployment

Command:

kubectl scale deployment nginx-deployment --replicas=5

Increased replicas from 3 Pods to 5 Pods.


### 7. Rolling Update

Command:

kubectl set image deployment/nginx-deployment nginx=nginx:1.27

Updated nginx image version.

Command:

kubectl rollout status deployment/nginx-deployment

Verified rolling update process.


### 8. Checked Rollout History

Command:

kubectl rollout history deployment/nginx-deployment

Checked Deployment revision history.


### 9. Rollback Deployment

Command:

kubectl rollout undo deployment/nginx-deployment

Rollbacked Deployment to previous version.


Command:

kubectl get deployment nginx-deployment -o wide

Verified previous nginx image was restored.


## Key Learnings

- Learned Kubernetes Deployment.
- Learned ReplicaSet and Pod management.
- Learned scaling of applications.
- Learned Rolling Updates.
- Learned Rollback process.
- Learned Deployment revision history.


## Screenshots

1. 01-get-nodes.png
2. 02-create-deployment.png
3. 03-get-deployment.png
4. 04-get-pods.png
5. 05-describe-deployment.png
6. 06-scale-deployment.png
7. 07-rolling-update.png
8. 08-rollout-history.png
9. 09-rollback-final.png