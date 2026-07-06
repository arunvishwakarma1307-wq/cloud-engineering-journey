# Kubernetes Day 05 Notes

## Labels
Labels are key-value pairs attached to Kubernetes objects.

Example:
app=nginx
env=dev

---

## Selectors
Selectors are used to filter Kubernetes resources based on labels.

Example:
kubectl get pods -l env=dev

---

## Practical Summary

- Viewed pods and labels
- Added custom label to a pod
- Filtered pods using label selector
- Understood how Kubernetes organizes resources using labels