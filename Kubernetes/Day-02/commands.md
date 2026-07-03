# Kubernetes Day 02 - Commands

## 1. Create Deployment

```bash
kubectl create deployment nginx-deployment --image=nginx
```

Creates a Deployment using the Nginx image.

---

## 2. Check Deployment

```bash
kubectl get deployments
```

Displays all Deployments.

---

## 3. Check Running Pods

```bash
kubectl get pods
```

Shows all running Pods.

---

## 4. Watch Pods in Real Time

```bash
kubectl get pods -w
```

Watches Pod status continuously.

---

## 5. Delete a Pod

```bash
kubectl delete pod <pod-name>
```

Deletes a Pod to test Kubernetes Self-Healing.

---

## 6. Scale Deployment

```bash
kubectl scale deployment nginx-deployment --replicas=3
```

Increases the number of Pods from 1 to 3.

---

## 7. Describe Deployment

```bash
kubectl describe deployment nginx-deployment
```

Displays detailed information about the Deployment.