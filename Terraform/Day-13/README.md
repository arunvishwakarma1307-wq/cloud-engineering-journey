# Day 13 - Terraform Provisioners

## Practical Overview

In this practical, I learned how Terraform Provisioners can execute commands during resource lifecycle events.

The main focus was on the `local-exec` provisioner and how it can execute local commands during resource creation and destruction.

---

## Topics Covered

* Terraform Provisioners
* `local-exec`
* Provisioner command execution
* `working_dir`
* Destroy-time provisioner
* Provisioner execution during resource lifecycle
* Resource destruction verification

---

## Local-Exec Provisioner

The `local-exec` provisioner was used to execute a local command when the Terraform resource was created.

Example:

```
provisioner "local-exec" {
  command = "echo local-exec provisioner executed successfully"
}
```

The provisioner successfully executed during `terraform apply`.

---

## Provisioner Working Directory

The `working_dir` argument was used to specify the directory in which the provisioner command should execute.

Example:

```
provisioner "local-exec" {
  command     = "echo Provisioner executed in the Terraform working directory"
  working_dir = path.module
}
```

The resource was recreated to verify the provisioner execution.

---

## Destroy-Time Provisioner

A destroy-time `local-exec` provisioner was configured using:

```
provisioner "local-exec" {
  command = "echo Destroy-time provisioner executed successfully"
  when    = destroy
}
```

The provisioner executed when the resource was destroyed using `terraform destroy`.

---

## Verification

The practical was verified by:

* Checking successful `local-exec` execution
* Checking the created file and its content
* Verifying provisioner execution with `working_dir`
* Verifying destroy-time provisioner execution
* Confirming the resource and file were removed after destruction

---

## Screenshots

* `01-local-exec-execution.png` - Successful local-exec provisioner execution
* `02-provisioner-file-result.png` - Created file and its content
* `03-working-dir-provisioner.png` - Provisioner execution using working directory
* `04-destroy-time-provisioner.png` - Successful destroy-time provisioner execution
* `05-destroy-verification.png` - Resource and file destruction verification

---

## What I Learned

* Terraform Provisioners
* `local-exec`
* Executing local commands from Terraform
* `working_dir`
* Destroy-time provisioners
* Provisioner lifecycle behavior
* Resource destruction verification
