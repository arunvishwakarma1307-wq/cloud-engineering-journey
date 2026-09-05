# Day 14 - Terraform Resource Import Commands

## 1. Create an Existing Docker Container

First, a Docker container was created manually outside Terraform.

```powershell
docker run -d --name terraform-import-demo nginx:alpine
```

This created a running NGINX container named:

```text
terraform-import-demo
```

The purpose was to create infrastructure that already existed before Terraform started managing it.

---

## 2. Verify the Docker Container

The running container was checked using:

```powershell
docker ps --filter "name=terraform-import-demo"
```

This confirmed that the Docker container was running successfully.

The container was also checked with:

```powershell
docker ps -a --filter "name=terraform-import-demo"
```

This command was used to view the container details including its container ID.

---

## 3. Configure Terraform Docker Provider

A Terraform configuration was created for the Docker provider.

The resource was defined as:

```text
docker_container.imported
```

Terraform was initialized using:

```powershell
terraform init
```

The configuration was validated using:

```powershell
terraform validate
```

The configured provider was checked using:

```powershell
terraform providers
```

---

## 4. Get the Full Docker Container ID

Terraform import requires the resource ID supported by the provider.

The complete Docker container ID was obtained using:

```powershell
docker inspect --format="{{.ID}}" terraform-import-demo
```

The command returned the full container ID:

```text
658eaee17270e5b605e051033030981fd8a638531f99523c2e2cc5e4f8941eee
```

The full ID was used because the Docker provider import required the complete container ID.

---

## 5. Import the Existing Docker Container

The existing Docker container was imported into Terraform using:

```powershell
terraform import docker_container.imported 658eaee17270e5b605e051033030981fd8a638531f99523c2e2cc5e4f8941eee
```

The import completed successfully.

This demonstrated that an existing Docker resource can be brought under Terraform state management without creating a new container.

### Screenshot

`01-docker-container-import.png`

**Explanation:**  
This screenshot shows the successful `terraform import` operation. It proves that the existing Docker container was successfully imported into the Terraform resource `docker_container.imported`.

---

## 6. Verify the Imported Resource in Terraform State

After the import, Terraform state was checked using:

```powershell
terraform state list
```

The output contained:

```text
docker_container.imported
```

This confirmed that Terraform was now tracking the existing Docker container in its state.

### Screenshot

`02-imported-resource-state.png`

**Explanation:**  
This screenshot shows `docker_container.imported` in the Terraform state. It proves that the resource was successfully registered in Terraform state after the import.

---

## 7. Verify the Imported Container

The Docker container was checked again using:

```powershell
docker ps --filter "name=terraform-import-demo"
```

The container was still running.

This confirmed that Terraform import did not create a replacement container.

### Screenshot

`03-imported-container-running.png`

**Explanation:**  
This screenshot shows that the imported Docker container was running successfully after the Terraform import operation.

---

## 8. Check Terraform Plan After Import

After importing the resource, Terraform was asked to compare the configuration with the imported resource:

```powershell
terraform plan
```

Terraform detected differences between the existing Docker container and the current Terraform configuration.

The plan showed:

```text
Plan: 1 to add, 0 to change, 1 to destroy.
```

It also showed that Terraform planned a replacement.

The plan was **not applied**.

This was important because applying the plan could have destroyed and recreated the existing Docker container.

### Screenshot

`04-import-plan-verification.png`

**Explanation:**  
This screenshot demonstrates that importing a resource does not automatically make the Terraform configuration identical to the existing infrastructure. Terraform detected configuration differences and proposed a replacement.

---

## 9. Inspect Imported Resource

The imported resource details were inspected using:

```powershell
terraform state show docker_container.imported
```

This command displays the attributes Terraform stored for the imported resource.

It helps understand the actual state of the resource after import.

---

## 10. Remove the Resource from Terraform State

After completing the import demonstration, the resource was removed from Terraform state using:

```powershell
terraform state rm docker_container.imported
```

The command successfully removed the resource from Terraform state.

Important:

```text
terraform state rm
```

does **not** delete the real Docker container.

It only removes Terraform's tracking of that resource.

---

## 11. Verify the Docker Container After State Removal

The Docker container was checked after removing it from Terraform state:

```powershell
docker ps -a --filter "name=terraform-import-demo"
```

The container was still present and running.

This demonstrated the difference between removing a resource from Terraform state and deleting the actual infrastructure.

---

## 12. Delete the Temporary Docker Container

The Docker container was then removed separately using Docker:

```powershell
docker rm -f terraform-import-demo
```

This deleted the temporary container created for the practical.

---

## 13. Final Cleanup Verification

Finally, the Docker container was checked again:

```powershell
docker ps -a --filter "name=terraform-import-demo"
```

No container was listed, confirming that the temporary Docker resource had been removed.

---

# Complete Practical Command Flow

The main practical flow was:

```powershell
docker run -d --name terraform-import-demo nginx:alpine

docker ps --filter "name=terraform-import-demo"

docker ps -a --filter "name=terraform-import-demo"

terraform init

terraform validate

terraform providers

docker inspect --format="{{.ID}}" terraform-import-demo

terraform import docker_container.imported 658eaee17270e5b605e051033030981fd8a638531f99523c2e2cc5e4f8941eee

terraform state list

docker ps --filter "name=terraform-import-demo"

terraform plan

terraform state show docker_container.imported

terraform state rm docker_container.imported

docker ps -a --filter "name=terraform-import-demo"

docker rm -f terraform-import-demo

docker ps -a --filter "name=terraform-import-demo"
```

---

# Screenshot Documentation

| Screenshot | Practical Proof |
|---|---|
| `01-docker-container-import.png` | Successful Terraform import of the existing Docker container |
| `02-imported-resource-state.png` | Imported resource appears in Terraform state |
| `03-imported-container-running.png` | Docker container remains running after import |
| `04-import-plan-verification.png` | Terraform detects configuration differences after import |

---

# Important Safety Note

The `terraform plan` showed a resource replacement:

```text
1 to add, 0 to change, 1 to destroy
```

Therefore:

```powershell
terraform apply
```

was intentionally **not executed** after this plan.

The resource was removed from Terraform state using:

```powershell
terraform state rm docker_container.imported
```

and the temporary Docker container was deleted separately using:

```powershell
docker rm -f terraform-import-demo
```