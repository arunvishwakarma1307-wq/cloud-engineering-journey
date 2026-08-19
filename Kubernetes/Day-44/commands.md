# Day 44 - Commands Used

## 1. Go to Day-44 Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Kubernetes\Day-44"
```

## 2. Check ValidatingAdmissionPolicy Resources

```powershell
kubectl api-resources | findstr admission
```

## 3. Check Existing Validating Webhooks

```powershell
kubectl get validatingwebhookconfigurations
```

## 4. Check Existing ValidatingAdmissionPolicies

```powershell
kubectl get validatingadmissionpolicies
```

Expected initially:

```text
No resources found
```

## 5. Check Existing Policy Bindings

```powershell
kubectl get validatingadmissionpolicybindings
```

Expected initially:

```text
No resources found
```

## 6. Apply ValidatingAdmissionPolicy

```powershell
kubectl apply -f policy.yaml
```

Expected:

```text
validatingadmissionpolicy.admissionregistration.k8s.io/require-app-label created
```

## 7. Verify Policy

```powershell
kubectl get validatingadmissionpolicy require-app-label
```

## 8. Apply Policy Binding

```powershell
kubectl apply -f binding.yaml
```

## 9. Verify Policy Binding

```powershell
kubectl get validatingadmissionpolicybinding require-app-label-binding
```

## 10. Test Invalid Pod

The Pod without the required `app` label was applied using:

```powershell
kubectl apply -f test-deny.yaml
```

Expected result:

```text
Pod must have an 'app' label.
```

Screenshot:

`01-admission-denied.png`

## 11. Test Valid Pod

The Pod containing the required `app` label was applied using:

```powershell
kubectl apply -f test-allow.yaml
```

## 12. Verify Valid Pod

```powershell
kubectl get pod label-pod
```

Expected:

```text
label-pod   1/1   Running
```

Screenshot:

`02-admission-allowed.png`

## 13. Verify Policy

```powershell
kubectl get validatingadmissionpolicy
```

## 14. Verify Binding

```powershell
kubectl get validatingadmissionpolicybinding
```

## 15. Final Pod Verification

```powershell
kubectl get pod label-pod
```

The valid Pod should remain:

```text
1/1 Running
```

## Screenshot Summary

### Screenshot 1 - Admission Denied

File:

`01-admission-denied.png`

Command:

```powershell
kubectl apply -f test-deny.yaml
```

Purpose:

Shows that a Pod without the required `app` label is rejected by the admission policy.

### Screenshot 2 - Admission Allowed

File:

`02-admission-allowed.png`

Commands:

```powershell
kubectl apply -f test-allow.yaml
```

```powershell
kubectl get pod label-pod
```

Purpose:

Shows that a Pod containing the required `app` label is successfully created and reaches Running status.

## Total Screenshots

2