# Day 28 - Commands Used

## 1. View Current Releases

```powershell
helm list
```

## 2. Go to Chart Directory

```powershell
cd C:\Users\ArunVishwakarma\my-chart
```

## 3. Upgrade Existing Release

```powershell
helm upgrade my-local-app .
```

## 4. Verify Release Revision

```powershell
helm list
```

## 5. View Release History

```powershell
helm history my-local-app
```

## 6. Rollback to Previous Revision

```powershell
helm rollback my-local-app 1
```

## 7. Verify Rollback History

```powershell
helm history my-local-app
```

---

# Screenshots Captured

Only the main practical screenshots were captured for documentation.

1. 01-current-releases.png
2. 02-upgrade-release.png
3. 03-release-history.png
4. 04-rollback-release.png
5. 05-history-after-rollback.png

**Total Screenshots:** 5