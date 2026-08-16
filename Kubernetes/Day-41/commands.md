# Day 41 - Commands Used

## 1. Go to Day-41 Folder

```powershell id="wh0x1y"
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-41"
```

## 2. Apply InitContainer Pod

```powershell id="t72gkd"
kubectl apply -f initcontainer-demo.yaml
```

## 3. Check Pod

```powershell id="9kgxj5"
kubectl get pod initcontainer-demo
```

## 4. Verify InitContainer Completion

```powershell id="c9z5ce"
kubectl get pod initcontainer-demo -o jsonpath="{.status.initContainerStatuses[0].state.terminated.reason}"
```

## 5. Check InitContainer Logs

```powershell id="q6r6g5"
kubectl logs initcontainer-demo -c init-setup
```

## 6. Check Main Container Start Time

```powershell id="jq7qph"
kubectl get pod initcontainer-demo -o jsonpath="{.status.containerStatuses[0].state.running.startedAt}"
```

## 7. Verify InitContainer Exit Code

```powershell id="e2k9ri"
kubectl get pod initcontainer-demo -o jsonpath="{.status.initContainerStatuses[0].state.terminated.exitCode}"
```

## 8. Verify InitContainer Restart Count

```powershell id="f4jv3m"
kubectl get pod initcontainer-demo -o jsonpath="{.status.initContainerStatuses[0].restartCount}"
```

## 9. Verify InitContainer and Main Container State

```powershell id="a6z4ce"
kubectl get pod initcontainer-demo -o jsonpath="{.status.initContainerStatuses[0].state.terminated.reason}{'\n'}{.status.containerStatuses[0].state.running}"
```

## 10. Verify Execution Order

```powershell id="m8u5v2"
kubectl get pod initcontainer-demo -o jsonpath="{.status.initContainerStatuses[0].state.terminated.finishedAt}{'\n'}{.status.containerStatuses[0].state.running.startedAt}"
```

---

# Screenshots

## Screenshot 1 — InitContainer Execution

**File:**

```text id="u0w4v6"
01-initcontainer-execution.png
```

**Command used:**

```powershell id="3t4v4q"
kubectl logs initcontainer-demo -c init-setup
```

**Proof:**

```text id="2g3a5j"
Init Container started
Init Container completed
```

---

## Screenshot 2 — InitContainer Execution Order

**File:**

```text id="x4u9mx"
02-initcontainer-execution-order.png
```

**Command used:**

```powershell id="h5u0u9"
kubectl get pod initcontainer-demo -o jsonpath="{.status.initContainerStatuses[0].state.terminated.finishedAt}{'\n'}{.status.containerStatuses[0].state.running.startedAt}"
```

**Proof:**

The InitContainer `finishedAt` timestamp appears before the main container `startedAt` timestamp.

---

**Total Screenshots: 2**
