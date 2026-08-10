# Day 35 - Kubernetes StatefulSet Rolling Update & Rollback

## Objective

Learn how to safely update a Kubernetes StatefulSet using the `RollingUpdate` strategy, inspect rollout revisions, and rollback to a previous revision.

---

## Practical implemention

## Practical 1 - StatefulSet Rolling Update

Updated the `storage-demo` StatefulSet to a newer NGINX image using the RollingUpdate strategy.

The rollout completed successfully and the StatefulSet Pods remained healthy.

**Screenshot:** `01-statefulset-rolling-update.png`

---

## Practical 2 - Verify Updated Image

Verified that both StatefulSet Pods were running the updated NGINX image.

**Screenshot:** `02-statefulset-updated-image.png`

---

## Practical 3 - Rollout History

Inspected the StatefulSet rollout history to understand the revisions created during updates.

**Screenshot:** `03-statefulset-rollout-history.png`

---

## Practical 4 - Revision Inspection & Rollback

Inspected a specific StatefulSet revision and then performed a rollback to the previous revision.

The rollback completed successfully.

**Screenshot:** `04-statefulset-rollback.png`

---

## Practical 5 - Rollback Verification

Verified the StatefulSet and its Pods after the rollback.

The StatefulSet returned to the previous configuration and both Pods remained in the Running state.

**Screenshot:** `05-statefulset-rollback-verified.png`

---

## Practical 6 - Final Revision History

Checked the rollout history again after the rollback to observe the StatefulSet revision history.

**Screenshot:** `06-statefulset-revision-history-final.png`

---

## Practical 7 - Update Strategy Verification

Verified that the StatefulSet continues to use the `RollingUpdate` strategy.

**Screenshot:** `07-statefulset-update-strategy.png`

---

## Practical 8 - Final Rollout Verification

Performed the final health check of the StatefulSet rollout and its Pods.

Final state:

```text
storage-demo-0   Running
storage-demo-1   Running
```

**Screenshot:** `08-statefulset-final-status.png`

---

## Key Concepts Learned

* StatefulSet RollingUpdate
* Kubernetes rollout management
* Container image updates
* StatefulSet revisions
* Revision inspection
* StatefulSet rollback
* Rollback verification
* Update strategies

---

## Manifest

The StatefulSet configuration used in this practical is stored in:

```text
stateful-pvc.yaml
```

---

## Screenshots

| # | Screenshot                                  |
| - | ------------------------------------------- |
| 1 | `01-statefulset-rolling-update.png`         |
| 2 | `02-statefulset-updated-image.png`          |
| 3 | `03-statefulset-rollout-history.png`        |
| 4 | `04-statefulset-rollback.png`               |
| 5 | `05-statefulset-rollback-verified.png`      |
| 6 | `06-statefulset-revision-history-final.png` |
| 7 | `07-statefulset-update-strategy.png`        |
| 8 | `08-statefulset-final-status.png`           |


---

## Outcome

Successfully performed a StatefulSet rolling update, verified the updated Pods, inspected rollout revisions, performed a rollback, and confirmed the final healthy state of the StatefulSet.
