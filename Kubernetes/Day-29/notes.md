# Day 29 - Helm Uninstall and Release Cleanup

## What is Helm Uninstall?

Helm Uninstall removes a deployed Helm Release from a Kubernetes cluster.

It deletes the release and all Kubernetes resources that were created by Helm for that release.

---

## Why Use Helm Uninstall?

- Remove unused applications
- Clean up cluster resources
- Free cluster memory and storage
- Remove test deployments
- Maintain a clean Kubernetes environment

---

## What Happens During Uninstall?

When a release is uninstalled, Helm automatically removes:

- Deployment
- ReplicaSet
- Pods
- Services
- ConfigMaps (managed by Helm)
- Other Helm-managed resources

The Helm Release is also removed from the release list.

---

## Verifying Release Removal

After uninstalling a release, use:

```powershell
helm list
```

If the release no longer appears, it has been successfully removed.

---

## Verifying Kubernetes Resources

Even after Helm reports success, it is good practice to verify that Kubernetes resources have been cleaned up.

Example:

```powershell
kubectl get pods
```

Only the remaining applications should be visible.

---

## Difference Between Helm Uninstall and kubectl delete

### Helm Uninstall

- Removes the entire Helm Release
- Deletes all Helm-managed resources
- Cleans up release metadata

### kubectl delete

- Deletes only the specified Kubernetes resource
- Does not remove Helm Release information
- May leave other resources behind

---

## Best Practices

- Always verify resources after uninstalling.
- Remove only unused releases.
- Use Helm for application lifecycle management instead of manually deleting resources.

---

## What I Learned Today

- Learned how to uninstall a Helm Release.
- Verified that the release was removed from Helm.
- Confirmed Kubernetes resource cleanup.
- Understood the difference between Helm Uninstall and kubectl delete.
- Completed the Helm Release lifecycle from deployment to cleanup.