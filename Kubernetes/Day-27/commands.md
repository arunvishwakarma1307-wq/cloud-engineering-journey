# Day 27 - Commands Used

## 1. Create Repository Folder

```powershell
mkdir C:\Users\ArunVishwakarma\helm-repo
```

## 2. Copy Packaged Chart

```powershell
copy C:\Users\ArunVishwakarma\my-chart\my-chart-0.1.0.tgz C:\Users\ArunVishwakarma\helm-repo\
```

## 3. Verify Chart Copy

```powershell
dir C:\Users\ArunVishwakarma\helm-repo
```

## 4. Go to Repository Folder

```powershell
cd C:\Users\ArunVishwakarma\helm-repo
```

## 5. Generate Repository Index

```powershell
helm repo index .
```

## 6. Verify Repository Files

```powershell
dir
```

## 7. Attempt to Add Repository using file:// (Windows Limitation)

```powershell
helm repo add local-repo file:///C:/Users/ArunVishwakarma/helm-repo
```

## 8. Start Local HTTP Server

```powershell
python -m http.server 8080
```

## 9. Add Local Repository

```powershell
helm repo add local-repo http://localhost:8080
```

## 10. Verify Repository

```powershell
helm repo list
```

## 11. Search Local Repository

```powershell
helm search repo local-repo
```

## 12. Install Chart from Local Repository

```powershell
helm install my-local-app local-repo/my-chart
```

# Screenshots Captured

Only the main practical screenshots were captured for documentation.

**Total Screenshots:** 7