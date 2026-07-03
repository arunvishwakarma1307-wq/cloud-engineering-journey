# Kubernetes Day 02 - Notes

## What is Deploy?

Deploy means making an application available for users to access. It is the process of running an application.

Example:
- Deploy a website
- Deploy a web application
- Deploy an API

---

## What is Deployment?

A Deployment is a Kubernetes object that manages Pods.

It ensures that the required number of Pods are always running.

---

## Deployment Architecture

Deployment
↓
ReplicaSet
↓
Pod
↓
Container

---

## What is ReplicaSet?

ReplicaSet maintains the desired number of Pods.

If a Pod crashes or is deleted, ReplicaSet automatically creates a new Pod.

---

## What is Self-Healing?

Self-Healing is a Kubernetes feature.

If a Pod fails, Kubernetes automatically recreates it without manual intervention.

Example:

Desired Pods = 3

Current Pods = 2

Kubernetes automatically creates 1 new Pod.

---

## What is Scaling?

Scaling means increasing or decreasing the number of Pods.

Example:

1 Pod → 3 Pods

Command:

```bash
kubectl scale deployment nginx-deployment --replicas=3
```

---

## Difference Between Deploy and Deployment

| Deploy | Deployment |
|---------|------------|
| Action | Kubernetes Object |
| Makes application live | Manages Pods |
| Verb | Noun |

---

## Important Commands

```bash
kubectl create deployment nginx-deployment --image=nginx
kubectl get deployments
kubectl get pods
kubectl get pods -w
kubectl delete pod <pod-name>
kubectl scale deployment nginx-deployment --replicas=3
kubectl describe deployment nginx-deployment
```

---

## Key Learnings

- Deployment manages Pods.
- ReplicaSet maintains the desired number of Pods.
- Kubernetes provides Self-Healing.
- Scaling increases or decreases Pods.
- Deployment supports Rolling Updates.

