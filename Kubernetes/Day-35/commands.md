# Day 35 - Commands

## 1. Check Update Strategy

```powershell
kubectl get statefulset storage-demo -o jsonpath="{.spec.updateStrategy.type}"
```

## 2. Check Current Rollout Status

```powershell
kubectl rollout status statefulset/storage-demo
```

---

## 3. Update StatefulSet Image

```powershell
kubectl set image statefulset/storage-demo nginx=nginx:1.27
```

## 4. Monitor Rolling Update

```powershell
kubectl rollout status statefulset/storage-demo
```

## 5. Check StatefulSet Pods

```powershell
kubectl get pods -l app=storage-demo -o wide
```

---

## 6. Verify Updated Pod Images

```powershell
kubectl get pods -l app=storage-demo -o jsonpath="{range .items[*]}{.metadata.name}{': '}{.spec.containers[0].image}{'\n'}{end}"
```

---

## 7. Check Rollout History

```powershell
kubectl rollout history statefulset/storage-demo
```

## 8. Inspect Revision 2

```powershell
kubectl rollout history statefulset/storage-demo --revision=2
```

---

## 9. Rollback StatefulSet

```powershell
kubectl rollout undo statefulset/storage-demo
```

## 10. Monitor Rollback

```powershell
kubectl rollout status statefulset/storage-demo
```

---

## 11. Verify StatefulSet After Rollback

```powershell
kubectl get statefulset storage-demo
```

## 12. Verify Pods After Rollback

```powershell
kubectl get pods -l app=storage-demo
```

## 13. Verify Current Image

```powershell
kubectl get statefulset storage-demo -o jsonpath="{.spec.template.spec.containers[0].image}"
```

---

## 14. Check Final Revision History

```powershell
kubectl rollout history statefulset/storage-demo
```

---

## 15. Verify Update Strategy

```powershell
kubectl get statefulset storage-demo -o jsonpath="{.spec.updateStrategy.type}"
```

## 16. Check RollingUpdate Partition

```powershell
kubectl get statefulset storage-demo -o jsonpath="{.spec.updateStrategy.rollingUpdate.partition}"
```

---

## 17. Final Rollout Status

```powershell
kubectl rollout status statefulset/storage-demo
```

## 18. Final Pod Status

```powershell
kubectl get pods -l app=storage-demo
```

---

# Screenshot Mapping

| Screenshot                                  | Related Command/Practical           |
| ------------------------------------------- | ----------------------------------- |
| `01-statefulset-rolling-update.png`         | Image update + rollout + Pod status |
| `02-statefulset-updated-image.png`          | Updated image verification          |
| `03-statefulset-rollout-history.png`        | Rollout history                     |
| `04-statefulset-rollback.png`               | Revision inspection + rollback      |
| `05-statefulset-rollback-verified.png`      | Rollback verification               |
| `06-statefulset-revision-history-final.png` | Final revision history              |
| `07-statefulset-update-strategy.png`        | Update strategy + partition         |
| `08-statefulset-final-status.png`           | Final rollout + Pod status          |

**Total screenshots: 8**
