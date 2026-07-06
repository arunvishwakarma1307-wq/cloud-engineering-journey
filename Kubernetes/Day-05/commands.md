# Kubernetes Day 05 Commands

## Check Pods
```bash
kubectl get pods
```

## Show Labels
```bash
kubectl get pods --show-labels
```

## Add Label to Pod
```bash
kubectl label pod nginx-yaml-xxxxx env=dev
```

## Filter Pods by Label
```bash
kubectl get pods -l env=dev
```