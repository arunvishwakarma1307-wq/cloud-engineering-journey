# Day 45 - Commands Used

## 1. Go to Day-45 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-45"
```

## 2. Check Existing ResourceQuotas

```powershell
kubectl get resourcequota --all-namespaces
```

## 3. Create Namespace

```powershell
kubectl create namespace quota-demo
```

## 4. Verify Namespace

```powershell
kubectl get namespace quota-demo
```

## 5. Apply ResourceQuota

```powershell
kubectl apply -f quota.yaml
```

## 6. Check ResourceQuota

```powershell
kubectl get resourcequota compute-quota -n quota-demo
```

## 7. Describe ResourceQuota

```powershell
kubectl describe resourcequota compute-quota -n quota-demo
```

## 8. Create Pod Within Quota

```powershell
kubectl apply -f quota-pod.yaml
```

## 9. Verify Pod

```powershell
kubectl get pod quota-pod-1 -n quota-demo
```

Expected:

```text
quota-pod-1   1/1   Running
```

## 10. Check Quota Usage

```powershell
kubectl get resourcequota compute-quota -n quota-demo
```

Observed usage:

```text
pods: 1/3
requests.cpu: 100m/500m
requests.memory: 64Mi/256Mi
limits.cpu: 200m/1
limits.memory: 128Mi/512Mi
```

Screenshot:

`01-resourcequota-usage.png`

## 11. Test Quota Exceed

```powershell
kubectl apply -f quota-exceed.yaml
```

Expected rejection:

```text
exceeded quota: compute-quota
```

Screenshot:

`02-resourcequota-denied.png`

## 12. Verify Quota After Rejection

```powershell
kubectl get resourcequota compute-quota -n quota-demo
```

The quota usage remains based on the successfully created Pod because the exceeding Pod was rejected.

## Screenshot Summary

### Screenshot 1 - ResourceQuota Usage

File:

`01-resourcequota-usage.png`

Commands:

```powershell
kubectl get pod quota-pod-1 -n quota-demo
```

```powershell
kubectl get resourcequota compute-quota -n quota-demo
```

Purpose:

Shows the successfully running Pod and the ResourceQuota usage.

### Screenshot 2 - ResourceQuota Denied

File:

`02-resourcequota-denied.png`

Command:

```powershell
kubectl apply -f quota-exceed.yaml
```

Purpose:

Shows Kubernetes rejecting a Pod because creating it would exceed the configured ResourceQuota.

## Total Screenshots

2