# Day 30 - Commands Used

## 1. View Kubernetes Namespaces

```powershell
kubectl get ns
```

## 2. Create ConfigMap

```powershell
kubectl create configmap app-config --from-literal=APP_NAME=CloudVault --from-literal=APP_ENV=Development
```

## 3. Verify ConfigMaps

```powershell
kubectl get configmaps
```

## 4. View ConfigMap Details

```powershell
kubectl describe configmap app-config
```

## 5. Export ConfigMap as YAML

```powershell
kubectl get configmap app-config -o yaml
```

## 6. Create Pod Using ConfigMap

```powershell
kubectl apply -f configmap-pod.yaml
```

## 7. Verify Running Pod

```powershell
kubectl get pods
```

## 8. Verify Environment Variables

```powershell
kubectl exec configmap-demo -- printenv | findstr APP
```

## 9. Delete Demo Pod

```powershell
kubectl delete pod configmap-demo
```

---

# Screenshots Captured

Only the main practical screenshots were captured for documentation.

1. 01-cluster-namespaces.png
2. 02-create-configmap.png
3. 03-describe-configmap.png
4. 04-configmap-yaml.png
5. 05-create-configmap-pod.png
6. 06-configmap-environment-variables.png
7. 07-delete-configmap-pod.png

**Total Screenshots:** 7