# Day 22 - Helm Chart Lifecycle

## What is Helm Chart Lifecycle?

The Helm Chart Lifecycle is the process of managing a Helm Release from installation to removal. Helm provides commands to monitor, update, roll back, and uninstall releases.

---

## Helm Status

The `helm status` command displays detailed information about a deployed Helm Release, including its status, revision, namespace, and resources.

---

## Helm History

The `helm history` command shows all revisions of a Helm Release along with their status and description.

---

## Helm Upgrade

The `helm upgrade` command updates an existing Helm Release using the latest chart or modified configuration.

---

## Helm Rollback

The `helm rollback` command restores a Helm Release to a previous revision if an upgrade causes problems.

---

## Helm Uninstall

The `helm uninstall` command removes a Helm Release and deletes its associated Kubernetes resources.

---

## What I Learned Today

- Checked the status of a Helm Release.
- Viewed the revision history of a Helm Release.
- Upgraded an existing Helm Release.
- Verified the upgraded release.
- Rolled back to a previous revision.
- Uninstalled the Helm Release.
- Verified that the release was removed successfully.