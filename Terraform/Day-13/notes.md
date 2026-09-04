# Day 13 - Terraform Provisioners

## Terraform Provisioners

Terraform Provisioners are used to execute commands or scripts during resource lifecycle events.

Provisioners can be useful when a task cannot be handled directly through a Terraform resource or provider.

---

## Local-Exec Provisioner

The `local-exec` provisioner executes a command on the machine where Terraform is running.

Example:

```
provisioner "local-exec" {
  command = "echo local-exec provisioner executed successfully"
}
```

In this practical, `local-exec` was used with a `local_file` resource.

---

## When Does local-exec Run?

A normal `local-exec` provisioner runs after the resource has been successfully created.

The flow is:

```
Terraform
    ↓
Resource Created
    ↓
local-exec Provisioner
    ↓
Local Command Executed
```

---

## Working Directory

The `working_dir` argument specifies the directory from which the provisioner command should execute.

Example:

```
provisioner "local-exec" {
  command     = "echo Provisioner executed in the Terraform working directory"
  working_dir = path.module
}
```

`path.module` refers to the directory containing the Terraform module.

---

## Destroy-Time Provisioner

A provisioner can also run when a resource is destroyed.

This is configured using:

```
when = destroy
```

Example:

```
provisioner "local-exec" {
  command = "echo Destroy-time provisioner executed successfully"
  when    = destroy
}
```

The flow is:

```
Terraform Destroy
    ↓
Resource Destroyed
    ↓
Destroy-Time Provisioner
    ↓
Local Command Executed
```

---

## Provisioners as a Last Resort

Provisioners should generally be used as a last resort.

Terraform prefers managing infrastructure through resources and providers because they provide better state management and predictable infrastructure behavior.

Provisioners are useful when a required action cannot be handled properly through Terraform's normal resource model.

---

## Important Concepts

| Concept          | Meaning                                                |
| ---------------- | ------------------------------------------------------ |
| Provisioner      | Executes a command or script during resource lifecycle |
| `local-exec`     | Executes a command on the local machine                |
| `command`        | Command executed by the provisioner                    |
| `working_dir`    | Directory where the command runs                       |
| `when = destroy` | Runs the provisioner during resource destruction       |
| `path.module`    | Current Terraform module directory                     |

---

## Key Takeaways

* Provisioners can execute local commands.
* `local-exec` runs commands on the machine running Terraform.
* `working_dir` controls the command's working directory.
* Destroy-time provisioners run during resource destruction.
* Provisioners should generally be used only when normal Terraform resources are not suitable.
