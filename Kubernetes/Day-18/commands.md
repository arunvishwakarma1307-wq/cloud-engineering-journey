# Day 18 - Commands

## Check Helm Version

```bash
helm version
```

---

## Add Bitnami Repository

```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
```

---

## Update Repository

```bash
helm repo update
```

---

## Search NGINX Chart

```bash
helm search repo nginx
```

---

## Start Minikube

```bash
minikube start
```

---

## Verify Kubernetes Cluster

```bash
kubectl get nodes
```

---

## Install NGINX using Helm

```bash
helm install my-nginx bitnami/nginx
```

---



## View Installed Releases

```bash
helm list
```

---

## Verify Pods

```bash
kubectl get pods
```

---

## Verify Services

```bash
kubectl get svc
```

---

## Verify Deployments

```bash
kubectl get deployments
```

---

