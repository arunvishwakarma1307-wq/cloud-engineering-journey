# Day 42 - Commands Used

## 1. Go to Day-42 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-42"
```

## 2. Create PDB

```powershell
kubectl apply -f pdb-demo.yaml
```

## 3. Check PDB

```powershell
kubectl get pdb hpa-pdb
```

## 4. Check Matching Pods

```powershell
kubectl get pods -l app=hpa-demo
```

## 5. Test Node Drain

```powershell
kubectl drain minikube --ignore-daemonsets --delete-emptydir-data --force
```

Note: This was a single-node Minikube cluster, so the drain test was not used as the final PDB screenshot proof.

## 6. Return Node to Schedulable State

```powershell
kubectl uncordon minikube
```

## 7. Final PDB Status

```powershell
kubectl get pdb hpa-pdb -o wide
```

## 8. Detailed PDB Information

```powershell
kubectl describe pdb hpa-pdb
```

# Screenshot

## Screenshot 1 - PDB Protection

**File:**

`01-pdb-protection.png`

**Commands used:**

```powershell
kubectl get pdb hpa-pdb -o wide
```

```powershell
kubectl describe pdb hpa-pdb
```

**Proof shown:**

- PDB name: `hpa-pdb`
- Minimum available: `2`
- Current/desired healthy Pods
- Allowed disruptions

**Total Screenshots: 1**