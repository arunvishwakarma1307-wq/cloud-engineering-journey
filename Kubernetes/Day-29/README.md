# Day 29 - Helm Uninstall and Release Cleanup

## Objective

Learn how to uninstall a Helm Release, verify resource cleanup, and understand how Helm removes deployed applications from a Kubernetes cluster.

---

## Practical Implementation

### Screenshot 1 - View Current Releases

Listed all currently deployed Helm Releases before performing the uninstall operation.

### Screenshot 2 - Uninstall Helm Release

Removed the `my-local-app` release using the `helm uninstall` command.

The release was successfully removed from the Kubernetes cluster.

### Screenshot 3 - Verify Release Removal

Verified the installed releases using `helm list`.

Confirmed that `my-local-app` no longer appeared in the Helm Release list.

### Screenshot 4 - Verify Kubernetes Resource Cleanup

Verified the running Kubernetes Pods using `kubectl get pods`.

Confirmed that all resources related to `my-local-app` were removed, while the remaining application (`dependency-demo`) continued running normally.

---

## Screenshots

- 01-current-releases-before-uninstall.png
- 02-uninstall-release.png
- 03-verify-release-removed.png
- 04-verify-pods-after-uninstall.png

---

## Key Concepts Learned

- Helm Uninstall removes an existing Helm Release.
- Helm automatically deletes Kubernetes resources created by the release.
- Removed releases no longer appear in `helm list`.
- Kubernetes resources can be verified using `kubectl get pods`.
- Helm simplifies application cleanup without manually deleting Deployments, Services, ReplicaSets, or Pods.

---

## Outcome

Successfully uninstalled a Helm Release, verified that it was removed from Helm's release list, and confirmed that the associated Kubernetes resources were automatically cleaned up. Learned how Helm manages the complete application lifecycle, including safe removal and resource cleanup in Kubernetes environments.