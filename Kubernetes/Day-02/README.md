# Kubernetes Day 02 - Deployment, ReplicaSet & Scaling

## Objective

Learn how Kubernetes Deployment manages Pods automatically and how ReplicaSet provides Self-Healing and Scaling.

---

## Topics Covered

- What is Deployment?
- Deploy vs Deployment
- ReplicaSet
- Self-Healing
- Scaling Pods
- kubectl describe deployment

---

## Practical Performed

### 1. Created an Nginx Deployment

```bash
kubectl create deployment nginx-deployment --image=nginx
```

### 2. Checked Deployment

```bash
kubectl get deployments
```

### 3. Checked Running Pods

```bash
kubectl get pods
```

### 4. Deleted a Pod

Observed that Kubernetes automatically created a new Pod.

### 5. Scaled Deployment

```bash
kubectl scale deployment nginx-deployment --replicas=3
```

Three Pods were running successfully.

### 6. Described Deployment

```bash
kubectl describe deployment nginx-deployment
```

Learned about Replicas, Strategy, ReplicaSet, Events and Conditions.

---

## What I Learned

- Deployment manages Pods.
- ReplicaSet maintains the desired number of Pods.
- Kubernetes automatically recreates deleted Pods.
- Scaling increases or decreases the number of Pods.
- Deployment supports Self-Healing.

---

## Result

Successfully created a Deployment, scaled it from 1 Pod to 3 Pods, and verified Self-Healing using Kubernetes.


---

## screenshots

### Get Deployments

![Get Deployments](screenshots/01-get-deployments.png)

### Get Pods

![Get Pods](screenshots/02-get-pods.png)

### Describe Deployment

![Describe Deployment](screenshots/03-describe-deployment.png)

### Self-Healing

![Self-Healing](screenshots/04-self-healing.png)