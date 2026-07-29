# Day 23 - Commands Used

1. Open Chart.yaml

```powershell
notepad my-chart\Chart.yaml
```

2. Update Helm dependencies

```powershell
helm dependency update
```

3. View downloaded dependency

```powershell
tree charts /F
```

4. View Chart.lock

```powershell
type Chart.lock
```

5. Install Helm Chart with dependency

```powershell
helm install dependency-demo .\my-chart
```

6. Verify Helm Release

```powershell
helm list
```

7. Verify Kubernetes Pods

```powershell
kubectl get pods
```