# Kubernetes Day 03 - Notes

## What is a Kubernetes Service?

A Service is a Kubernetes object that provides a stable network endpoint for accessing Pods.

---

## Why do we need a Service?

Pods are temporary.

If a Pod is deleted or recreated, its IP address changes.

A Service provides a permanent endpoint so users can always access the application.

---

## What is NodePort?

NodePort is a Service type that exposes an application outside the Kubernetes cluster.

Users can access the application using:

```
http://<Node-IP>:<NodePort>
```

Example:

```
http://192.168.49.2:31592
```

---

## Minikube Service

In Minikube with the Docker driver on Windows, the following command starts a tunnel and opens the application in the browser.

```bash
minikube service nginx-deployment
```

---

## Service Flow

User

↓

NodePort Service

↓

Deployment

↓

ReplicaSet

↓

Pods

---

## Types of Kubernetes Services

### 1. ClusterIP

- Default Service type.
- Accessible only inside the Kubernetes cluster.

### 2. NodePort

- Exposes the application outside the cluster.
- Used for testing and development.

### 3. LoadBalancer

- Used in cloud environments like AWS, Azure and GCP.
- Provides an external load balancer for production applications.

---

## Key Learnings

- Services provide stable networking.
- Pods can change but Services remain the same.
- NodePort allows external access.
- Minikube Service makes testing easier on Windows.