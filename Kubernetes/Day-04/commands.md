# Kubernetes Day 04 Commands

## Generate Deployment YAML

```bash
kubectl create deployment nginx-yaml --image=nginx --dry-run=client -o yaml > deployment.yaml
```

---

## Apply YAML

```bash
kubectl apply -f deployment.yaml
```

---

## Check Deployments

```bash
kubectl get deployments
```

---

## Check Pods

```bash
kubectl get pods
```

---

## View YAML

```bash
cat deployment.yaml
```

---

