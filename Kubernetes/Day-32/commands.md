# Day 32 - Commands Used

## 1. Go to Day-32 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-32"
```

## 2. Create emptyDir Pod

```powershell
kubectl apply -f emptydir-pod.yaml
```

## 3. Check emptyDir Pod

```powershell
kubectl get pod emptydir-demo
```

## 4. Create Data Inside emptyDir

```powershell
kubectl exec emptydir-demo -- sh -c "echo 'Cloud Engineering Day 32' > /data/day32.txt"
```

## 5. Verify emptyDir Data

```powershell
kubectl exec emptydir-demo -- cat /data/day32.txt
```

## 6. View Volume Mount Details

```powershell
kubectl describe pod emptydir-demo
```

## 7. Delete emptyDir Pod

```powershell
kubectl delete pod emptydir-demo
```

## 8. Recreate emptyDir Pod

```powershell
kubectl apply -f emptydir-pod.yaml
```

## 9. Verify emptyDir Pod

```powershell
kubectl get pod emptydir-demo
```

## 10. Check Previous emptyDir Data

```powershell
kubectl exec emptydir-demo -- cat /data/day32.txt
```

## 11. Check StorageClass

```powershell
kubectl get storageclass
```

## 12. Create PVC

```powershell
kubectl apply -f pvc.yaml
```

## 13. Check PVC

```powershell
kubectl get pvc
```

## 14. Check Persistent Volume

```powershell
kubectl get pv
```

## 15. Create Pod Using PVC

```powershell
kubectl apply -f pvc-pod.yaml
```

## 16. Check PVC Pod

```powershell
kubectl get pod pvc-demo
```

## 17. Create Persistent Data

```powershell
kubectl exec pvc-demo -- sh -c "echo 'Persistent Kubernetes Data' > /data/persistent.txt"
```

## 18. Verify Persistent Data

```powershell
kubectl exec pvc-demo -- cat /data/persistent.txt
```

## 19. Delete PVC Demo Pod

```powershell
kubectl delete pod pvc-demo
```

## 20. Recreate PVC Demo Pod

```powershell
kubectl apply -f pvc-pod.yaml
```

## 21. Check PVC Pod Status

```powershell
kubectl get pod pvc-demo
```

## 22. Verify Persistent Data After Pod Recreation

```powershell
kubectl exec pvc-demo -- cat /data/persistent.txt
```

## 23. Check Final PVC Status

```powershell
kubectl get pvc
```

---

# Screenshots

1. `01-emptydir-pod-running.png`
2. `02-volume-data-created.png`
3. `03-volume-mount-details.png`
4. `04-emptydir-data-lost.png`
5. `05-storageclass.png`
6. `06-pvc-bound.png`
7. `07-persistent-volume.png`
8. `08-pvc-pod-running.png`
9. `09-persistent-data-created.png`
10. `10-pvc-data-persistence.png`
11. `11-pvc-final-status.png`

**Total Screenshots: 11**