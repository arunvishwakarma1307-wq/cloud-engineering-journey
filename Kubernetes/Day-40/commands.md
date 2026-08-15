# Day 40 - Commands Used

## 1. Go to Day-40 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-40"
```

## 2. Enable Metrics Server

```powershell
minikube addons enable metrics-server
```

## 3. Verify Metrics Server

```powershell
kubectl get deployment metrics-server -n kube-system
```

## 4. Check Node Metrics

```powershell
kubectl top nodes
```

## 5. Create HPA Demo Deployment

```powershell
kubectl apply -f hpa-demo.yaml
```

## 6. Check Deployment

```powershell
kubectl get deployment hpa-demo
```

## 7. Create Horizontal Pod Autoscaler

```powershell
kubectl autoscale deployment hpa-demo --cpu-percent=50 --min=1 --max=5
```

## 8. Check HPA

```powershell
kubectl get hpa hpa-demo
```

## 9. Describe HPA

```powershell
kubectl describe hpa hpa-demo
```

## 10. Check HPA Target Pod

```powershell
kubectl get pods -l app=hpa-demo -o wide
```

## 11. Check Deployment Status

```powershell
kubectl get deployment hpa-demo
```

## 12. Check Pod CPU Usage

```powershell
kubectl top pod -l app=hpa-demo
```

## 13. Store Pod Name

```powershell
$pod = kubectl get pods -l app=hpa-demo -o jsonpath="{.items[0].metadata.name}"
```

## 14. Generate CPU Load

```powershell
kubectl exec $pod -- sh -c "while true; do :; done"
```

## 15. Watch HPA Scaling

```powershell
kubectl get hpa hpa-demo -w
```

## 16. Stop CPU Load

```text
Ctrl + C
```

## 17. Check HPA After Scale-Down

```powershell
kubectl get hpa hpa-demo
```

## 18. Check Final Deployment

```powershell
kubectl get deployment hpa-demo
```

---

# Screenshots

## Screenshot 1 — HPA Scale-Up

**File:**

```text
01-hpa-scaling.png
```

**Command used:**

```powershell
kubectl get hpa hpa-demo -w
```

**Proof shown:**

```text
cpu: 200%/50%   1   5   4
```

This screenshot shows that HPA increased the replicas from **1 to 4** because CPU utilization exceeded the 50% target.

---

## Screenshot 2 — HPA Scale-Down

**File:**

```text
02-hpa-scale-down.png
```

**Command used:**

```powershell
kubectl get hpa hpa-demo -w
```

**Final verification command:**

```powershell
kubectl get hpa hpa-demo
```

**Proof shown:**

```text
cpu: 0%/50%   1   5   1
```

This screenshot shows that HPA reduced the replicas from **4 back to 1** after the CPU load stopped.

---

**Total Screenshots: 2**

