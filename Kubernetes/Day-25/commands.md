# Day 25 - Commands Used

## 1. List Configured Helm Repositories

```powershell
helm repo list
```

## 2. Search All Charts in Bitnami Repository

```powershell
helm search repo bitnami
```

## 3. Search MySQL Chart

```powershell
helm search repo bitnami/mysql
```

## 4. Show Chart Metadata

```powershell
helm show chart bitnami/mysql
```

## 5. Show Default Values

```powershell
helm show values bitnami/mysql
```

## 6. Show Complete Chart Information

```powershell
helm show all bitnami/mysql
```