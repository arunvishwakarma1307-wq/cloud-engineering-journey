# Day 37 - Commands Used

## 1. Go to Day-37 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-37"
```

## 2. Create DaemonSet

```powershell
kubectl apply -f daemonset.yaml
```

## 3. Check DaemonSet

```powershell
kubectl get daemonset node-agent
```

## 4. Check DaemonSet Pod

```powershell
kubectl get pods -l app=node-agent -o wide
```

## 5. Check Nodes

```powershell
kubectl get nodes
```

## 6. Inspect DaemonSet

```powershell
kubectl describe daemonset node-agent
```

## 7. Get Current Pod Name

```powershell
$pod = kubectl get pods -l app=node-agent -o jsonpath="{.items[0].metadata.name}"
```

## 8. Delete DaemonSet Pod

```powershell
kubectl delete pod $pod
```

## 9. Verify Pod Recreation

```powershell
kubectl get pods -l app=node-agent -o wide
```

## 10. Update DaemonSet Image and Verify Rollout

```powershell
kubectl set image daemonset/node-agent nginx=nginx:1.28
kubectl rollout status daemonset/node-agent
```

---

# Screenshots

1. `01-daemonset-node-pod.png`
2. `02-daemonset-status.png`
3. `03-daemonset-details.png`
4. `04-daemonset-pod-recreated.png`
5. `05-daemonset-rolling-update.png`
6. `06-daemonset-final-status.png`

**Total Screenshots: 6**
