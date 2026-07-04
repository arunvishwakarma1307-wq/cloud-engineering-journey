# Kubernetes Day 03 - Commands

## 1. Check Deployment

```bash
kubectl get deployments
```

Displays all Deployments running in the cluster.

---

## 2. Check Pods

```bash
kubectl get pods
```

Displays all running Pods.

---

## 3. Create a NodePort Service

```bash
kubectl expose deployment nginx-deployment --type=NodePort --port=80
```

Creates a NodePort Service for the Deployment.

---

## 4. View All Services

```bash
kubectl get services
```

Displays all Services in the cluster.

---

## 5. Describe the Service

```bash
kubectl describe service nginx-deployment
```

Shows detailed information about the Service.

---

## 6. Get Minikube IP

```bash
minikube ip
```

Displays the Minikube IP Address.

---

## 7. Open Service in Browser

```bash
minikube service nginx-deployment
```

Starts a tunnel (Docker driver on Windows) and opens the application in the browser.

---
