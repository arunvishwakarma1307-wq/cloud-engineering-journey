# Day 38 - Commands Used

## 1. Go to Day-38 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-38"
```

## 2. Create Kubernetes Job

```powershell
kubectl apply -f job.yaml
```

## 3. Check Job Status

```powershell
kubectl get job demo-job
```

## 4. Check Job Pod

```powershell
kubectl get pods -l job-name=demo-job
```

## 5. Check Job Logs

```powershell
kubectl logs demo-job-psrvm
```

## 6. Create Kubernetes CronJob

```powershell
kubectl apply -f cronjob.yaml
```

## 7. Check CronJob

```powershell
kubectl get cronjob demo-cronjob
```

## 8. Check Generated Jobs

```powershell
kubectl get jobs
```

## 9. Check CronJob Pods

```powershell
kubectl get pods
```

## 10. Check CronJob Execution Logs

```powershell
kubectl logs demo-cronjob-29777044-xhsj8
```

---

# Screenshots

1. `01-job-completed.png`
2. `02-cronjob-created.png`
3. `03-cronjob-job-created.png`
4. `04-cronjob-execution.png`

**Total Screenshots: 4**
