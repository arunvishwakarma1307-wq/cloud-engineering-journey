# Day 36 - Commands Used

## 1. Go to Day-36 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-36"
```

## 2. Enable NGINX Ingress Controller

```powershell
minikube addons enable ingress
```

## 3. Check Ingress Controller

```powershell
kubectl get pods -n ingress-nginx
```

## 4. Apply Backend Application

```powershell
kubectl apply -f ingress-demo.yaml
```

## 5. Check Deployment

```powershell
kubectl get deployment ingress-demo
```

## 6. Check Backend Pods

```powershell
kubectl get pods -l app=ingress-demo
```

## 7. Check Backend Service

```powershell
kubectl get service ingress-demo-service
```

## 8. Create Ingress Resource

```powershell
kubectl apply -f ingress.yaml
```

## 9. Check Ingress

```powershell
kubectl get ingress ingress-demo
```

## 10. Describe Ingress

```powershell
kubectl describe ingress ingress-demo
```

## 11. Get Minikube IP

```powershell
minikube ip
```

## 12. Get Ingress Controller URL

```powershell
minikube service ingress-nginx-controller -n ingress-nginx --url
```

## 13. Test Host-Based Ingress Routing

```powershell
curl.exe -H "Host: ingress-demo.local" http://127.0.0.1:55681/
```

## 14. Check Service Endpoints

```powershell
kubectl get endpoints ingress-demo-service
```

## 15. Check EndpointSlice

```powershell
kubectl get endpointslice -l kubernetes.io/service-name=ingress-demo-service
```

## 16. Final Ingress Check

```powershell
kubectl get ingress ingress-demo
```

## 17. Final Service Check

```powershell
kubectl get service ingress-demo-service
```

## 18. Final Pod Check

```powershell
kubectl get pods -l app=ingress-demo
```

---

# Screenshots

1. `01-ingress-configured.png`
2. `02-ingress-routing.png`

**Total Screenshots: 2**
