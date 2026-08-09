# Day 34 - Commands Used

## 1. Go to Day-34 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-34"
```

## 2. Check Existing StatefulSets

```powershell
kubectl get statefulsets
```

## 3. Check Existing Pods

```powershell
kubectl get pods
```

## 4. Check Existing PVCs

```powershell
kubectl get pvc
```

---

## 5. Create Headless Service

```powershell
kubectl apply -f stateful-service.yaml
```

## 6. Verify Headless Service

```powershell
kubectl get service stateful-demo
```

---

## 7. Create StatefulSet

```powershell
kubectl apply -f statefulset.yaml
```

## 8. Check StatefulSet

```powershell
kubectl get statefulset stateful-demo
```

## 9. Check StatefulSet Pods

```powershell
kubectl get pods -l app=stateful-demo
```

## 10. Check Pods with Network Information

```powershell
kubectl get pods -l app=stateful-demo -o wide
```

## 11. Describe StatefulSet Pod

```powershell
kubectl describe pod stateful-demo-0
```

## 12. Check StatefulSet Status

```powershell
kubectl get statefulset stateful-demo
```

## 13. Inspect StatefulSet Configuration

```powershell
kubectl get statefulset stateful-demo -o yaml
```

## 14. Delete StatefulSet Pod

```powershell
kubectl delete pod stateful-demo-0
```

## 15. Verify Pod Recreation

```powershell
kubectl get pods -l app=stateful-demo
```

## 16. Check Headless Service Endpoints

```powershell
kubectl get endpoints stateful-demo
```

## 17. Test StatefulSet DNS

```powershell
kubectl run dns-test --image=busybox:1.36 --restart=Never --command -- nslookup stateful-demo
```

## 18. Check DNS Test Pod

```powershell
kubectl get pod dns-test
```

## 19. View DNS Test Logs

```powershell
kubectl logs dns-test
```

## 20. Cleanup Temporary DNS Test Pod

```powershell
kubectl delete pod dns-test --ignore-not-found
```

## 21. Final StatefulSet Check

```powershell
kubectl get statefulset stateful-demo
```

## 22. Final Service Check

```powershell
kubectl get service stateful-demo
```

## 23. Final Pod Check

```powershell
kubectl get pods -l app=stateful-demo
```

---

# Screenshots

1. `01-headless-service.png`
2. `02-statefulset-created.png`
3. `03-stateful-pods.png`
4. `04-stateful-pod-identity.png`
5. `05-stateful-pod-details.png`
6. `06-statefulset-status.png`
7. `07-statefulset-pod-management.png`
8. `08-stateful-pod-recreated.png`
9. `09-stateful-service-endpoints.png`
10. `10-stateful-dns.png`
11. `11-statefulset-final-overview.png`

**Total Screenshots: 11**