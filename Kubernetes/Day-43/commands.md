# Day 43 - Commands Used

## 1. Go to Day-43 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-43"
```

## 2. Apply Network Test Pods

```powershell
kubectl apply -f network-demo.yaml
```

## 3. Check Network Client and Server Pods

```powershell
kubectl get pods -o wide
```

## 4. Create Network Server Service

```powershell
kubectl apply -f network-server-svc.yaml
```

## 5. Check Service

```powershell
kubectl get svc network-server
```

## 6. Check Service Endpoint

```powershell
kubectl get endpoints network-server
```

## 7. Test Initial Connectivity

```powershell
kubectl exec network-client -c client -- wget -qO- --timeout=3 http://network-server
```

Expected result:

```text
Welcome to nginx!
```

Screenshot:

`01-initial-connectivity.png`

## 8. Apply NetworkPolicy

```powershell
kubectl apply -f deny-server-ingress.yaml
```

## 9. Check NetworkPolicy

```powershell
kubectl get networkpolicy
```

## 10. Describe NetworkPolicy

```powershell
kubectl describe networkpolicy deny-network-server-ingress
```

Screenshot:

`02-networkpolicy-configuration.png`

## 11. Check NetworkPolicy YAML

```powershell
kubectl get networkpolicy deny-network-server-ingress -o yaml
```

## 12. Test Connectivity After NetworkPolicy

```powershell
kubectl exec network-client -c client -- wget -qO- --timeout=3 http://network-server
```

Observation:

The NGINX page was still accessible in the current Minikube environment, indicating that the NetworkPolicy was not being enforced by the current networking setup.

## 13. Check Minikube Status

```powershell
minikube status
```

## 14. Check Minikube Profile

```powershell
minikube profile list
```

## 15. Check System Pods

```powershell
kubectl get pods -n kube-system
```

## Screenshots

### Screenshot 1 - Initial Connectivity

File:

`01-initial-connectivity.png`

Command:

```powershell
kubectl exec network-client -c client -- wget -qO- --timeout=3 http://network-server
```

Purpose:

Proves that client-to-server HTTP connectivity was working before NetworkPolicy enforcement was tested.

### Screenshot 2 - NetworkPolicy Configuration

File:

`02-networkpolicy-configuration.png`

Command:

```powershell
kubectl describe networkpolicy deny-network-server-ingress
```

Purpose:

Shows the NetworkPolicy selector, ingress policy type, and absence of ingress rules.

## Total Screenshots

2