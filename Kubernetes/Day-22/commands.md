# Day 22 - Commands Used

1. View Helm Release status

```powershell
helm status my-chart-release
```

2. View Helm Release history

```powershell
helm history my-chart-release
```

3. Upgrade Helm Release

```powershell
helm upgrade my-chart-release .\my-chart
```

4. Verify upgraded release

```powershell
helm list
```

5. Rollback Helm Release

```powershell
helm rollback my-chart-release 1
```

6. Uninstall Helm Release

```powershell
helm uninstall my-chart-release
```

7. Verify release removal

```powershell
helm list
```