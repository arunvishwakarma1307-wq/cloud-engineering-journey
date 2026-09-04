# Day 13 - Terraform Provisioners Commands

## Practical 1 - Initialize and Validate Terraform

Commands used:

```
terraform init
terraform validate
```

Purpose:

* Initialize the Terraform working directory.
* Validate the Terraform configuration.

No screenshot was required because these are setup/validation commands.

---

## Practical 2 - Check Terraform Plan

Command:

```
terraform plan
```

Purpose:

* Preview the infrastructure changes before applying them.

No screenshot was required because the plan output itself was not the main concept of Day 13.

---

## Practical 3 - Execute local-exec Provisioner

Command:

```
terraform apply
```

Confirmation:

```
yes
```

Purpose:

* Create the `local_file` resource.
* Execute the `local-exec` provisioner after resource creation.

Screenshot:

```
01-local-exec-execution.png
```

Screenshot proves successful `local-exec` execution.

---

## Practical 4 - Verify Created File

Command:

```
Get-Content .\provisioner-demo.txt
```

Purpose:

* Verify that the Terraform-managed file was created.
* Verify the file content.

Screenshot:

```
02-provisioner-file-result.png
```

---

## Practical 5 - Configure working_dir

The provisioner was configured with:

```
provisioner "local-exec" {
  command     = "echo Provisioner executed in the Terraform working directory"
  working_dir = path.module
}
```

To force the resource to be recreated:

```
terraform taint local_file.example
```

Then:

```
terraform apply
```

Confirmation:

```
yes
```

Purpose:

* Recreate the resource.
* Execute the provisioner again.
* Verify the configured working directory.

Screenshot:

```
03-working-dir-provisioner.png
```

---

## Practical 6 - Destroy-Time Provisioner

The provisioner was changed to:

```
provisioner "local-exec" {
  command = "echo Destroy-time provisioner executed successfully"
  when    = destroy
}
```

Command:

```
terraform destroy
```

Confirmation:

```
yes
```

Purpose:

* Destroy the Terraform resource.
* Execute the destroy-time provisioner.

Screenshot:

```
04-destroy-time-provisioner.png
```

---

## Practical 7 - Verify Destruction

Commands:

```
terraform state list
Get-ChildItem
```

Purpose:

* Confirm that no Terraform-managed resource remains in state.
* Confirm that `provisioner-demo.txt` was removed.

Screenshot:

```
05-destroy-verification.png
```

---

## Screenshot Summary

| Screenshot                        | Practical                              |
| --------------------------------- | -------------------------------------- |
| `01-local-exec-execution.png`     | local-exec execution                   |
| `02-provisioner-file-result.png`  | File creation and content verification |
| `03-working-dir-provisioner.png`  | working_dir provisioner                |
| `04-destroy-time-provisioner.png` | Destroy-time provisioner               |
| `05-destroy-verification.png`     | Resource destruction verification      |

---

## Main Commands

```
terraform init
terraform validate
terraform plan
terraform apply
terraform taint local_file.example
terraform destroy
terraform state list
Get-Content .\provisioner-demo.txt
Get-ChildItem
```
