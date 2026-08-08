# Day 33 - Commands Used

## 1. Go to Day-33 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-33"
```

## 2. Check Persistent Volumes

```powershell
kubectl get pv
```

## 3. Check Persistent Volume Claims

```powershell
kubectl get pvc
```

## 4. Check StorageClass

```powershell
kubectl get storageclass
```

## 5. Describe Persistent Volume

```powershell
kubectl describe pv pvc-2e28886a-1e2f-4865-ad57-436215d520e5
```

## 6. Describe Persistent Volume Claim

```powershell
kubectl describe pvc data-dependency-demo-mysql-0
```

## 7. Check PV and PVC Binding

```powershell
kubectl get pv,pvc
```

## 8. Describe StorageClass

```powershell
kubectl describe storageclass standard
```

## 9. Check MySQL Pods

```powershell
kubectl get pods
```

## 10. Describe MySQL Pod

```powershell
kubectl describe pod dependency-demo-mysql-0
```

## 11. Check PVC Details in Wide Format

```powershell
kubectl get pvc -o wide
```

## 12. Check PV and PVC Mapping

```powershell
kubectl get pv,pvc -o wide
```

## 13. Check PV Reclaim Policy

```powershell
kubectl get pv -o custom-columns=NAME:.metadata.name,STATUS:.status.phase,RECLAIM:.spec.persistentVolumeReclaimPolicy,CLAIM:.spec.claimRef.name
```

## 14. Check PVC Volume Mode

```powershell
kubectl get pvc -o custom-columns=NAME:.metadata.name,STATUS:.status.phase,VOLUME:.spec.volumeName,MODE:.spec.volumeMode
```

## 15. Final Storage Overview

```powershell
kubectl get pv,pvc,storageclass
```

---

# Screenshots

1. `01-pv-details.png`
2. `02-pvc-details.png`
3. `03-pv-pvc-binding.png`
4. `04-storageclass-details.png`
5. `05-mysql-pvc-mount.png`
6. `06-pvc-wide-status.png`
7. `07-pv-pvc-mapping.png`
8. `08-pv-reclaim-policy.png`
9. `09-pvc-volume-mode.png`
10. `10-final-storage-overview.png`

**Total Screenshots: 10**

> Note: Existing MySQL PVs and PVCs were only inspected. No storage resources were deleted or modified.