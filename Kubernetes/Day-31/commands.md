# Day 31 - Commands Used

## 1. View Existing Secrets

```powershell
kubectl get secrets
```

## 2. Create Secret

```powershell
kubectl create secret generic app-secret --from-literal=DB_PASSWORD=MyPassword123 --from-literal=API_KEY=ABC123XYZ
```

## 3. Describe Secret

```powershell
kubectl describe secret app-secret
```

## 4. View Secret YAML

```powershell
kubectl get secret app-secret -o yaml
```

## 5. Decode Database Password

```powershell
kubectl get secret app-secret -o jsonpath="{.data.DB_PASSWORD}" | % { [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($_)) }
```

## 6. Decode API Key

```powershell
kubectl get secret app-secret -o jsonpath="{.data.API_KEY}" | % { [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($_)) }
```

## 7. Create Pod Using Secret

```powershell
kubectl apply -f secret-pod.yaml
```

## 8. Verify Running Pod

```powershell
kubectl get pods
```

## 9. Verify Secret Environment Variables

```powershell
kubectl exec secret-demo -- printenv | findstr DB
```

```powershell
kubectl exec secret-demo -- printenv | findstr API
```

## 10. Delete Demo Pod

```powershell
kubectl delete pod secret-demo
```

---

# Screenshots Captured

Only the main practical screenshots were captured for documentation.

1. 01-current-secrets.png
2. 02-create-secret.png
3. 03-describe-secret.png
4. 04-secret-yaml.png
5. 05-decode-db-password.png
6. 06-decode-api-key.png
7. 07-secret-pod-running.png
8. 08-secret-environment-variables.png
9. 09-delete-secret-pod.png

**Total Screenshots:** 9