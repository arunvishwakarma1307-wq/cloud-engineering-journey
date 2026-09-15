# Day 24 - Terraform Commands

## Source Project

### Move to Source Folder

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-24\source"
```

Moves into the source Terraform project.

---

### Check Files

```powershell
Get-ChildItem
```

Shows the files and folders in the current directory.

---

### Initialize Source Project

```powershell
terraform init
```

Initializes the Terraform working directory and downloads the required provider.

---

### Source Plan

```powershell
terraform plan
```

Shows the changes Terraform plans to make without applying them.

**Screenshot:** `01-source-plan.png`

---

### Source Apply

```powershell
terraform apply
```

Creates the resources defined in the source Terraform configuration.

```text
yes
```

Confirms the Terraform apply operation.

**Screenshot:** `02-source-apply.png`

---

### Source Output

```powershell
terraform output
```

Displays the output values from the source Terraform state.

**Screenshot:** `03-source-output.png`

---

## Consumer Project

### Move to Consumer Folder

```powershell
cd ..\consumer
```

Moves from the source folder to the consumer Terraform project.

---

### Check Files

```powershell
Get-ChildItem
```

Shows the files in the consumer directory.

---

### Initialize Consumer Project

```powershell
terraform init
```

Initializes the consumer Terraform project and downloads the required provider.

---

### Consumer Plan

```powershell
terraform plan
```

Checks the planned changes and reads the required data from the source Terraform state.

**Screenshot:** `04-remote-state-consumer-plan.png`

---

### Consumer Apply

```powershell
terraform apply
```

Creates the consumer resource using the value retrieved from the source state.

```text
yes
```

Confirms the Terraform apply operation.

**Screenshot:** `05-remote-state-consumer-apply.png`

---

### Consumer Output

```powershell
terraform output
```

Displays the output retrieved from the source Terraform state.

**Screenshot:** `06-remote-state-retrieved-output.png`

---

### Check Consumer File

```powershell
Get-Content .\consumer-data.txt
```

Displays the content of the file created using the retrieved remote state value.

**Screenshot:** `07-consumer-file-result.png`

---

### Final Plan

```powershell
terraform plan
```

Checks that there are no pending changes in the consumer project.

## Screenshots

1. `01-source-plan.png`
2. `02-source-apply.png`
3. `03-source-output.png`
4. `04-remote-state-consumer-plan.png`
5. `05-remote-state-consumer-apply.png`
6. `06-remote-state-retrieved-output.png`
7. `07-consumer-file-result.png`
