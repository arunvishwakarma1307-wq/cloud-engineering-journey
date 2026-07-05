# Kubernetes Day 04 Notes

## Topic

Deployment using YAML (Declarative Approach)

---

## What is YAML?

YAML is a configuration file used to define Kubernetes resources.

In this practical, we created a Deployment using a YAML file.

---

## YAML File Generated

Command used:

```bash
kubectl create deployment nginx-yaml --image=nginx --dry-run=client -o yaml > deployment.yaml
```

---

## Changes Made

Initially:

```yaml
replicas: 1
```

Changed to:

```yaml
replicas: 3
```

Applied using:

```bash
kubectl apply -f deployment.yaml
```

Later, changed:

```yaml
replicas: 3
```

to

```yaml
replicas: 5
```

Applied again:

```bash
kubectl apply -f deployment.yaml
```

---

## Commands Used

```bash
kubectl apply -f deployment.yaml
```

```bash
kubectl get deployments
```

```bash
kubectl get pods
```

---

## What I Learned

- Generated a Deployment YAML file.
- Edited the YAML file.
- Applied the YAML file using `kubectl apply`.
- Increased replicas from 1 to 3.
- Updated replicas from 3 to 5.
- Verified Deployments and Pods.