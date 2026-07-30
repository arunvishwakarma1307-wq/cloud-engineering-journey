# Day 24 - Commands Used

1. Check Current Directory

```powershell
pwd
```

2. Package the Helm Chart

```powershell
helm package .
```

3. Verify the Package

```powershell
dir *.tgz
```

4. Show Chart Information

```powershell
helm show chart .\my-chart-0.1.0.tgz
```

5. View Package Contents

```powershell
tar -tf my-chart-0.1.0.tgz
```