# Day 1 - Terraform Commands

## Check Terraform Version

```powershell
terraform version
```

Checks the installed Terraform version.

---

## Navigate to Day-01

```powershell
cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-01"
```

---

## Initialize Terraform

```powershell
terraform init
```

Initializes the Terraform working directory and downloads required providers.

---

## Validate Configuration

```powershell
terraform validate
```

Checks whether the Terraform configuration is syntactically valid.

---

## Preview Changes

```powershell
terraform plan
```

Shows what Terraform plans to create, modify, or destroy.

---

## Apply Configuration

```powershell
terraform apply
```

Creates or updates resources according to the Terraform configuration.

Type:

```text
yes
```

when Terraform asks for confirmation.

---

## List Terraform Resources

```powershell
terraform state list
```

Shows resources currently tracked in Terraform state.

---

## Check Created File

```powershell
Get-Content .\terraform-day1.txt
```

Displays the contents of the Terraform-created file.

Expected:

```text
Hello from Terraform Day-1
```

---

## List Files

```powershell
Get-ChildItem
```

Displays files and folders in the current directory.

---

## Destroy Resources

```powershell
terraform destroy
```

Removes resources managed by Terraform.

Type:

```text
yes
```

when Terraform asks for confirmation.

---

## Verify Resource Deletion

```powershell
Get-ChildItem .\terraform-day1.txt
```

After `terraform destroy`, the file should no longer exist.

---

## Terraform Workflow

```text
terraform init
terraform validate
terraform plan
terraform apply
terraform state list
terraform destroy
```

## Total Screenshots

3