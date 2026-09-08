# Day 17 - Terraform Workspaces Commands

## 1. Initialize Terraform

### Command

```powershell
terraform init
```

### Explanation

Initializes the Terraform working directory and downloads the required provider.

### Screenshot

`01-workspace-init.png`

---

## 2. Check Current Workspace

### Command

```powershell
terraform workspace show
```

### Explanation

Displays the currently active Terraform workspace.

The initial workspace was:

```text
default
```

### Screenshot

`02-default-workspace.png`

---

## 3. Apply Configuration in Default Workspace

### Command

```powershell
terraform apply
```

When prompted for confirmation:

```text
yes
```

### Explanation

Applies the Terraform configuration in the currently active `default` workspace.

The configuration creates a file based on the current workspace name.

### Screenshot

`03-default-workspace-apply.png`

---

## 4. Verify Default Workspace File

### Command

```powershell
Get-ChildItem -Filter "*.txt"
```

### Explanation

Lists the text files created in the Day-17 directory.

The default workspace created:

```text
default.txt
```

### Screenshot

`04-default-workspace-file.png`

---

## 5. Create and Verify Dev Workspace

### Command

```powershell
terraform workspace new dev
```

### Explanation

Creates a new workspace named `dev` and switches Terraform to it.

In this practical, the `dev` workspace had already been created before the terminal was accidentally closed. Therefore, when the command was run again, Terraform reported:

```text
Workspace "dev" already exists
```

The existing workspace was then verified using:

```powershell
terraform workspace show
```

The output was:

```text
dev
```

### Screenshot

`05-dev-workspace-active.png`

---

## 6. Verify Files Created by Workspaces

### Command

```powershell
Get-ChildItem -Filter "*.txt"
```

### Explanation

Checks the text files created by the Terraform configuration.

The workspaces resulted in:

```text
default.txt
dev.txt
```

This demonstrated that the same configuration could produce different filenames according to the active workspace.

### Screenshot

`06-dev-workspace-files.png`

---

## 7. List Terraform Workspaces

### Command

```powershell
terraform workspace list
```

### Explanation

Displays all Terraform workspaces available in the current working directory.

Example:

```text
  default
* dev
```

The `*` indicates the currently active workspace.

### Screenshot

`07-workspace-list.png`

---

## 8. Check Dev Workspace State

### Command

```powershell
terraform state list
```

### Explanation

Displays the resources tracked in the state of the active workspace.

The actual resource shown during the practical was:

```text
local_file.workspace_demo
```

### Screenshot

`08-dev-workspace-state.png`

---

## 9. Switch to Default Workspace

### Command

```powershell
terraform workspace select default
```

### Explanation

Switches Terraform from the `dev` workspace back to the `default` workspace.

### Screenshot

`09-default-workspace-selected.png`

---

# Final Verification

## Check Active Workspace

### Command

```powershell
terraform workspace show
```

### Expected Output

```text
default
```

No screenshot was taken for this verification.

---

## Final Terraform Plan

### Command

```powershell
terraform plan
```

### Expected Result

```text
No changes. Your infrastructure matches the configuration.
```

### Explanation

The final plan verified that the Terraform configuration and the current workspace state were synchronized.

No screenshot was taken for this verification.

---

# Complete Commands Used

```text
terraform init
terraform workspace show
terraform apply
yes
Get-ChildItem -Filter "*.txt"
terraform workspace new dev
terraform workspace list
terraform state list
terraform workspace select default
terraform workspace show
terraform plan
```

---

# Important Workspace Commands

```text
terraform workspace show
terraform workspace list
terraform workspace new <workspace-name>
terraform workspace select <workspace-name>
```

## Screenshots

1. `01-workspace-init.png` - Terraform initialization
2. `02-default-workspace.png` - Default workspace
3. `03-default-workspace-apply.png` - Applying configuration in default workspace
4. `04-default-workspace-file.png` - Default workspace file
5. `05-dev-workspace-active.png` - Dev workspace active
6. `06-dev-workspace-files.png` - Files created by different workspaces
7. `07-workspace-list.png` - Available Terraform workspaces
8. `08-dev-workspace-state.png` - Resource in workspace state
9. `09-default-workspace-selected.png` - Default workspace selected