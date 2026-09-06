# Day 15 - Terraform State & Local Backend Commands

## 1. Create the Terraform Configuration

The `main.tf` file was created with a local backend and a `local_file` resource.

The configuration used:

```hcl
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

resource "local_file" "remote_state_demo" {
  filename = "${path.module}/remote-state-demo.txt"
  content  = "Terraform remote state learning practical."
}
```

The local backend stores Terraform state in:

```text
terraform.tfstate
```

---

## 2. Initialize Terraform

Terraform was initialized using:

```powershell
terraform init
```

This initialized the Terraform working directory and configured the local backend.

---

## 3. Create Terraform Plan

The configuration was checked using:

```powershell
terraform plan
```

The plan showed that the `local_file.remote_state_demo` resource would be created.

### Screenshot

`01-local-state-plan.png`

**Explanation:**  
This screenshot shows the Terraform execution plan before resource creation. It demonstrates that Terraform detected the configured resource and planned to create it.

---

## 4. Apply the Terraform Configuration

The resource was created using:

```powershell
terraform apply
```

When Terraform asked for confirmation, the following was entered:

```text
yes
```

This created:

```text
remote-state-demo.txt
```

and recorded the resource in Terraform state.

### Screenshot

`02-state-resource-created.png`

**Explanation:**  
This screenshot shows the successful Terraform resource creation. It demonstrates that the configured `local_file` resource was successfully created.

---

## 5. Verify the Local State File

The Terraform state file was checked using:

```powershell
Get-ChildItem -Filter "terraform.tfstate"
```

The command showed:

```text
terraform.tfstate
```

This confirmed that the local state file existed after the resource was created.

### Screenshot

`03-local-state-created.png`

**Explanation:**  
This screenshot proves that Terraform generated the local `terraform.tfstate` file. The file is used by Terraform to track the managed resource.

---

## 6. List Resources in Terraform State

The resources tracked by Terraform were listed using:

```powershell
terraform state list
```

The output contained:

```text
local_file.remote_state_demo
```

### Screenshot

`04-resource-in-state.png`

**Explanation:**  
This screenshot shows that `local_file.remote_state_demo` is registered in Terraform state. It proves that Terraform is tracking the created resource.

---

## 7. Show Resource Details

Detailed information about the resource in the Terraform state was displayed using:

```powershell
terraform state show local_file.remote_state_demo
```

This command was used to inspect the resource attributes stored in state.

No screenshot was taken because the information was used for learning and state inspection.

---

## 8. Check State File Details

The local state file's name and size were checked using:

```powershell
Get-Item .\terraform.tfstate | Select-Object Name, Length
```

### Screenshot

`05-state-file-details.png`

**Explanation:**  
This screenshot provides additional proof that the local Terraform state file exists and contains stored state data.

---

## 9. Verify Terraform Plan

Terraform was run again using:

```powershell
terraform plan
```

Terraform reported that no changes were required because the configuration and current infrastructure were synchronized.

### Screenshot

`06-local-state-no-changes.png`

**Explanation:**  
This screenshot demonstrates that Terraform compared the configuration with the current managed resource and determined that no changes were required.

---

## 10. Verify the Created File

The content of the Terraform-created file was checked using:

```powershell
Get-Content .\remote-state-demo.txt
```

The output was:

```text
Terraform remote state learning practical.
```

No screenshot was taken because this was only a resource-content verification.

---

## 11. Display Terraform State

The complete Terraform state was displayed in a readable format using:

```powershell
terraform show
```

No screenshot was taken.

This command helped inspect the current state maintained by Terraform.

---

## 12. Inspect the State File Directly

The JSON contents of the local state file were viewed using:

```powershell
Get-Content .\terraform.tfstate
```

No screenshot was taken.

This demonstrated that Terraform state is stored as structured JSON data.

---

## 13. Final State Verification

The Terraform state was checked again using:

```powershell
terraform state list
```

The expected resource was:

```text
local_file.remote_state_demo
```

No additional screenshot was taken because the same state verification was already documented in:

```text
04-resource-in-state.png
```

---

# Complete Practical Command Flow

The main command sequence used during the practical was:

```powershell
terraform init

terraform plan

terraform apply

Get-ChildItem -Filter "terraform.tfstate"

terraform state list

terraform state show local_file.remote_state_demo

Get-Item .\terraform.tfstate | Select-Object Name, Length

terraform plan

Get-Content .\remote-state-demo.txt

terraform show

Get-Content .\terraform.tfstate

terraform state list
```

---

# Screenshot Mapping

| Screenshot | Command / Action | Purpose |
|---|---|---|
| `01-local-state-plan.png` | `terraform plan` | Shows the resource planned for creation |
| `02-state-resource-created.png` | `terraform apply` | Shows successful resource creation |
| `03-local-state-created.png` | `Get-ChildItem -Filter "terraform.tfstate"` | Proves local state file exists |
| `04-resource-in-state.png` | `terraform state list` | Proves resource is tracked in state |
| `05-state-file-details.png` | `Get-Item .\terraform.tfstate \| Select-Object Name, Length` | Shows state file details |
| `06-local-state-no-changes.png` | `terraform plan` | Shows configuration and infrastructure are synchronized |

---

# Important Note

This practical used the **local backend**.

The Terraform state was stored locally in:

```text
terraform.tfstate
```

Remote state was not implemented in this practical.

Remote State and Remote Backends will be covered separately in:

```text
Day-16
```