# Day 35 - StatefulSet Rolling Update & Rollback

## StatefulSet RollingUpdate

StatefulSet can update its Pods gradually using the `RollingUpdate` strategy.

Instead of replacing all Pods at the same time, Kubernetes updates the StatefulSet according to its update strategy.

---

## Container Image Update

In this practical, the `storage-demo` StatefulSet was updated to a newer NGINX image.

The updated image was:

```text
nginx:1.27
```

The rollout was monitored until the update completed successfully.

---

## Rollout

A rollout represents the process of applying a new version of a workload.

During the StatefulSet update, Kubernetes created a new revision and updated the Pods.

The rollout status can be monitored to confirm whether the update has completed.

---

## StatefulSet Revisions

StatefulSet keeps revision information for changes to its Pod template.

Revisions allow us to inspect previous configurations.

Example:

```text
Revision #1 → Previous configuration
Revision #2 → Updated configuration
```

A specific revision can be inspected to see details such as the container image and Pod template.

---

## Rollback

Rollback allows a StatefulSet to return to a previous revision.

In this practical, the StatefulSet was first updated to `nginx:1.27` and then rolled back to the previous revision.

Rollback is useful when a new deployment causes unexpected problems.

---

## Update Strategy

The StatefulSet used:

```text
RollingUpdate
```

This strategy allows updates to happen progressively instead of replacing all Pods simultaneously.

---

## Rollback Verification

After rollback, the StatefulSet and its Pods were checked to make sure the workload remained healthy.

Both Pods returned to the Running state.

```text
storage-demo-0
storage-demo-1
```

---

## Important Concepts

### RollingUpdate

Gradually updates Pods to the new configuration.

### Revision

A stored version of the StatefulSet Pod template.

### Rollback

Restores a previous StatefulSet revision.

### Rollout Status

Shows whether the current update has completed successfully.

---

## Practical Flow

```text
StatefulSet
     ↓
RollingUpdate
     ↓
New Image
     ↓
New Revision
     ↓
Rollout Complete
     ↓
Revision Inspection
     ↓
Rollback
     ↓
Previous Revision
     ↓
Final Verification
```

---

## What I Learned

* How StatefulSet RollingUpdate works
* How to update a StatefulSet container image
* How StatefulSet revisions are created
* How to inspect a specific revision
* How to rollback a StatefulSet
* How to verify a rollback
* How to check the StatefulSet update strategy
