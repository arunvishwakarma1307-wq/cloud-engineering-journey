# Day 39 - Commands Used

## 1. Go to Day-39 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-39"
```

## 2. Create Resource Configured Pod

```powershell
kubectl apply -f resource-demo.yaml
```

## 3. Check Pod Status

```powershell
kubectl get pod resource-demo
```

## 4. Check Resource Configuration

```powershell
kubectl describe pod resource-demo
```

## 5. Verify Requests and Limits

```powershell
kubectl get pod resource-demo -o jsonpath="{.spec.containers[0].resources}"
```

## 6. Check Pod Network and Node Information

```powershell
kubectl get pod resource-demo -o wide
```

## 7. Check Actual Resource Usage

```powershell
kubectl top pod resource-demo
```

## 8. Delete Pod Before Applying Updated Configuration

```powershell
kubectl delete pod resource-demo
```

## 9. Apply Updated Resource Configuration

```powershell
kubectl apply -f resource-demo.yaml
```

## 10. Verify Updated Pod

```powershell
kubectl get pod resource-demo
```

## 11. Verify Updated Requests and Limits

```powershell
kubectl get pod resource-demo -o jsonpath="{.spec.containers[0].resources}"
```

## 12. Check Pod QoS Class

```powershell
kubectl get pod resource-demo -o jsonpath="{.status.qosClass}"
```

## 13. Final Resource Verification

```powershell
kubectl get pod resource-demo -o jsonpath="{.metadata.name}{'\n'}{.status.qosClass}{'\n'}{.spec.containers[0].resources}"
```

---

# Screenshots

1. `01-resource-requests-limits.png`
2. `02-resource-limits-updated.png`
3. `03-resource-qos-class.png`

**Total Screenshots: 3**
