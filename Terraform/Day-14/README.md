# Day 14 - Terraform Resource Import

## Resource Import

Terraform Resource Import is used to bring an existing infrastructure resource under Terraform management.

In this practical, a Docker container was created outside Terraform and then imported into Terraform state.

---

## Docker Container

A Docker container was created manually using the NGINX Alpine image:

```text
terraform-import-demo
```

The container was running before Terraform import was performed.

---

## Terraform Import

The Docker container was imported into Terraform using its full Docker container ID.

After the import, Terraform recognized the existing container as:

```text
docker_container.imported
```

---

## Terraform State

The imported resource was verified using:

```text
terraform state list
```

The resource appeared as:

```text
docker_container.imported
```

This confirmed that the existing Docker container had been added to Terraform state.

---

## Terraform Plan

After importing the container, `terraform plan` was executed to compare the Terraform configuration with the imported resource.

Terraform detected differences between the existing Docker container and the current Terraform configuration and planned a replacement.

The replacement was **not applied** because the purpose of this practical was to understand resource import.

---

## Safe Cleanup

After verification, the imported resource was removed from Terraform state using:

```text
terraform state rm docker_container.imported
```

The Docker container was then removed separately using Docker:

```text
docker rm -f terraform-import-demo
```

---

## Screenshots

1. `01-docker-container-import.png` - Successful Docker container import
2. `02-imported-resource-state.png` - Imported resource in Terraform state
3. `03-imported-container-running.png` - Imported Docker container running
4. `04-import-plan-verification.png` - Terraform plan after import

---

## What I Learned

- Terraform Resource Import
- Importing existing infrastructure into Terraform
- Terraform state
- Provider-specific resource IDs
- Verifying imported resources
- Understanding configuration differences after import
- Safely removing resources from Terraform state
- Difference between Terraform state removal and actual infrastructure deletion