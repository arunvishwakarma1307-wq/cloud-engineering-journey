# Day 26 - Commands Used

## 1. Verify Packaged Chart

```powershell
dir *.tgz
```

## 2. Generate Repository Index

```powershell
helm repo index .
```

## 3. Verify index.yaml Creation

```powershell
dir
```

## 4. View index.yaml

```powershell
type index.yaml
```

## 5. Generate Repository Index with URL

```powershell
helm repo index . --url https://example.com/charts
```