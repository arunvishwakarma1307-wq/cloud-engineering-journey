# Kubernetes Day 04 - Deployment using YAML (Declarative Approach)

## Objective

Learn how to create and manage Kubernetes Deployments using YAML files with the declarative approach.

---

## Topics Covered

- Imperative vs Declarative Approach
- Kubernetes YAML File
- Deployment YAML
- kubectl apply
- Updating Deployment using YAML

---
## Imperative vs Declarative Approach

### Imperative Approach

In the imperative approach, Kubernetes resources are created using direct commands.

Example:

```bash
kubectl create deployment nginx --image=nginx
```

### Declarative Approach

In the declarative approach, Kubernetes resources are managed using YAML files.

Example:

```bash
kubectl apply -f deployment.yaml
```

In this practical, we used the declarative approach by creating and applying a Deployment YAML file.


## Practical Performed

### 1. Generated Deployment YAML

```bash
kubectl create deployment nginx-yaml --image=nginx --dry-run=client -o yaml > deployment.yaml
```

### 2. Modified Deployment

Changed:

```yaml
replicas: 1
```

to

```yaml
replicas: 3
```

### 3. Applied the YAML File

```bash
kubectl apply -f deployment.yaml
```

### 4. Verified Deployment

```bash
kubectl get deployments
```

### 5. Verified Running Pods

```bash
kubectl get pods
```

### 6. Updated Deployment

Changed:

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

Verified Pods:

```bash
kubectl get pods
```

---

## What I Learned

- Learned the difference between Imperative and Declarative approaches.
- Generated a Deployment YAML file.
- Applied the YAML file using `kubectl apply`.
- Updated the Deployment by changing replicas.
- Verified Deployments and Pods.

---

## Result

Successfully created and updated a Kubernetes Deployment using a YAML file.

## Screenshots

### Deployment YAML

![Deployment YAML](Screenshots/01-deployment-yaml.png)

### Apply YAML

![Apply YAML](Screenshots/02-apply-yaml.png)

### Get Deployments

![Get Deployments](Screenshots/03-get-deployments.png)

### Get Pods

![Get Pods](Screenshots/04-get-pods.png)