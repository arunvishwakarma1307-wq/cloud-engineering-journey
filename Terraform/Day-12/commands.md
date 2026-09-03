# Day 12 - Terraform Lifecycle Meta-Argument Commands

## Navigate to Day-12

    cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-12"

---

## 1. Initialize Terraform

Command:

    terraform init

Purpose:
Initialized the Terraform working directory and downloaded the required provider.

---

## 2. Validate Terraform Configuration

Command:

    terraform validate

Purpose:
Checked whether the Terraform configuration was valid.

---

## 3. Create Before Destroy - Plan

Command:

    terraform plan

Practical:
Created a resource configuration using the `create_before_destroy` lifecycle rule and reviewed the Terraform plan.

Screenshot:

    01-create-before-destroy-plan.png

---

## 4. Lifecycle Resource - Apply and Verify

Command:

    terraform apply

Confirmation:

    yes

Verification command:

    Get-ChildItem .\lifecycle-demo.txt

Practical:
Created the lifecycle-managed resource and verified that the file was successfully created.

Screenshot:

    02-lifecycle-resource-created.png

---

## 5. Create Before Destroy - Resource Replacement

Configuration was changed from:

    lifecycle-demo.txt

to:

    lifecycle-demo-v2.txt

Command:

    terraform apply

Confirmation:

    yes

Verification command:

    Get-ChildItem -Filter "*.txt"

Practical:
Triggered a resource replacement and verified the new lifecycle-managed file.

Screenshot:

    03-create-before-destroy-result.png

---

## 6. Prevent Destroy

Configuration:

    lifecycle {
      create_before_destroy = true
      prevent_destroy       = true
    }

The resource filename was changed to trigger a replacement.

Command:

    terraform plan

Practical:
Terraform attempted to destroy the existing resource as part of the replacement, but `prevent_destroy = true` blocked the destroy operation.

Result:

    Error: Instance cannot be destroyed

Screenshot:

    04-prevent-destroy.png

---

## 7. Ignore Changes

Configuration:

    lifecycle {
      ignore_changes = [
        content
      ]
    }

The resource content was changed in the Terraform configuration.

Command:

    terraform plan

Practical:
Verified that Terraform ignored the change to the `content` attribute.

Result:

    No changes. Your infrastructure matches the configuration.

Screenshot:

    05-ignore-changes.png

---

## 8. Final Terraform Verification

Command:

    terraform plan

Purpose:
Performed the final Terraform plan verification to confirm the configuration was in the expected state.

No additional screenshot was taken because the same verification result was already captured in the previous practical.

---

## Screenshots Summary

1. `01-create-before-destroy-plan.png` - Create-before-destroy lifecycle configuration plan
2. `02-lifecycle-resource-created.png` - Lifecycle resource creation verification
3. `03-create-before-destroy-result.png` - Resource replacement result
4. `04-prevent-destroy.png` - Prevent-destroy protection verification
5. `05-ignore-changes.png` - Ignore-changes verification