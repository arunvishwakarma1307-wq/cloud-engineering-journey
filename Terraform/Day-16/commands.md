# Day 16 - Terraform Remote State & Remote Backend Commands

## Objective

This practical demonstrates Terraform Remote State using an S3-compatible remote backend with MinIO.

MinIO was used as local S3-compatible object storage, and Terraform was configured to store its state remotely.

---

## 1. Docker Version Check

### Command

docker version

### Explanation

This command checks whether Docker is installed correctly and whether the Docker client can communicate with the Docker engine.

Docker was required because MinIO was run as a Docker container.

---

## 2. Start MinIO Container

### Command

docker run -d `
  --name terraform-minio `
  -p 9000:9000 `
  -p 9001:9001 `
  -e MINIO_ROOT_USER=admin `
  -e MINIO_ROOT_PASSWORD=Minio12345 `
  minio/minio server /data --console-address ":9001"

### Explanation

This command creates and starts a MinIO container.

Important options:

- `-d` runs the container in detached mode.
- `--name terraform-minio` gives the container a name.
- `-p 9000:9000` exposes the MinIO S3 API.
- `-p 9001:9001` exposes the MinIO web console.
- `MINIO_ROOT_USER` defines the MinIO administrator username.
- `MINIO_ROOT_PASSWORD` defines the MinIO administrator password.
- `minio/minio` is the MinIO Docker image.
- `server /data` starts the MinIO object-storage server.
- `--console-address ":9001"` starts the MinIO web console on port 9001.

---

## 3. Verify MinIO Container

### Command

docker ps --filter "name=terraform-minio"

### Explanation

This command checks whether the MinIO container is running.

---

## 4. Configure MinIO Credentials

### Commands

$env:AWS_ACCESS_KEY_ID="admin"
$env:AWS_SECRET_ACCESS_KEY="Minio12345"

### Explanation

Terraform's S3 backend can use AWS-compatible environment variables for authentication.

The credentials are stored as PowerShell environment variables instead of being written directly into the Terraform backend configuration.

---

## 5. Verify Access Key

### Command

echo $env:AWS_ACCESS_KEY_ID

### Expected Output

admin

### Explanation

This verifies that the S3-compatible access key environment variable was successfully configured.

---

## 6. Create MinIO Bucket

### Action

Open the MinIO web console:

http://localhost:9001

Create the bucket:

terraform-remote-state

### Explanation

The bucket acts as the remote storage location for Terraform state.

### Screenshot

01-minio-bucket.png

This screenshot shows the MinIO bucket created for remote Terraform state.

---

## 7. Configure Terraform S3 Remote Backend

### File

main.tf

### Backend Configuration

terraform {
  backend "s3" {
    bucket = "terraform-remote-state"
    key    = "day-16/terraform.tfstate"
    region = "us-east-1"

    endpoints = {
      s3 = "http://localhost:9000"
    }

    use_path_style = true

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
  }
}

### Explanation

The `backend "s3"` block tells Terraform to use an S3-compatible backend.

### bucket

bucket = "terraform-remote-state"

Specifies the MinIO bucket where the state will be stored.

### key

key = "day-16/terraform.tfstate"

Specifies the path and object name of the remote state.

The final remote state location is:

terraform-remote-state/day-16/terraform.tfstate

### region

region = "us-east-1"

Provides the S3 region value required by the backend.

### endpoints

endpoints = {
  s3 = "http://localhost:9000"
}

Tells Terraform to communicate with the local MinIO S3 API instead of Amazon S3.

### use_path_style

use_path_style = true

Enables path-style S3 requests, which is useful when working with local S3-compatible services such as MinIO.

### skip_credentials_validation

skip_credentials_validation = true

Prevents Terraform from performing AWS-specific credential validation that is not required for this local S3-compatible setup.

### skip_region_validation

skip_region_validation = true

Prevents AWS-specific region validation.

### skip_requesting_account_id

skip_requesting_account_id = true

Prevents Terraform from trying to retrieve an AWS account ID.

### skip_metadata_api_check

skip_metadata_api_check = true

Prevents Terraform from attempting to retrieve credentials from AWS instance metadata.

---

## 8. Terraform Data Resource

### Configuration

resource "terraform_data" "remote_state_demo" {
  input = "Terraform remote state learning practical."
}

### Explanation

`terraform_data` is a built-in Terraform resource that does not require an external provider.

It was used to create a Terraform-managed resource entry so that the remote state could be demonstrated without repeating the `local_file` resource used in the previous practical.

The resource stored in state is:

terraform_data.remote_state_demo

---

## 9. Terraform Output

### Configuration

output "remote_state_status" {
  value = "Terraform state is stored in the MinIO S3-compatible backend."
}

### Explanation

This output provides a confirmation message after Terraform successfully applies the configuration.

---

## 10. Initialize Remote Backend

### Command

terraform init

### Explanation

`terraform init` initializes the Terraform working directory and configures the backend defined in the Terraform configuration.

In this practical, it connected Terraform to the MinIO S3-compatible backend.

### Screenshot

02-remote-backend-init.png

This screenshot shows successful initialization of the S3-compatible remote backend.

---

## 11. Create Terraform Plan

### Command

terraform plan

### Explanation

`terraform plan` compares the Terraform configuration with the current state and determines what Terraform intends to create, change, or destroy.

In this practical, the plan showed that the `terraform_data.remote_state_demo` resource would be created.

### Screenshot

03-remote-state-plan.png

This screenshot shows the planned resource creation before applying the configuration.

---

## 12. Apply Terraform Configuration

### Command

terraform apply

When Terraform asks for confirmation, enter:

yes

### Explanation

`terraform apply` applies the planned configuration and creates the Terraform-managed resource.

After the apply operation, Terraform writes the updated state to the configured remote backend.

### Screenshot

04-remote-state-apply.png

This screenshot shows the successful Terraform apply operation.

---

## 13. Verify Remote State Object in MinIO

### Action

Open the MinIO console and navigate to:

terraform-remote-state

Then open:

day-16

The Terraform state object should be visible as:

terraform.tfstate

Complete path:

terraform-remote-state/day-16/terraform.tfstate

### Explanation

This directly verifies that Terraform created the state object inside the remote MinIO storage.

### Screenshot

05-remote-state-object.png

This screenshot shows the Terraform state object stored remotely.

---

## 14. List Terraform State Resources

### Command

terraform state list

### Expected Output

terraform_data.remote_state_demo

### Explanation

`terraform state list` displays all resources currently tracked in the Terraform state.

Because the state is stored remotely, Terraform retrieves the state information from the configured remote backend.

### Screenshot

06-remote-state-list.png

This screenshot shows the resource stored in Terraform state.

---

## 15. Check Local Working Directory

### Command

Get-ChildItem -Force

### Explanation

This command lists all files and directories in the current Day-16 folder, including hidden items.

The important point is that there was no local:

terraform.tfstate

file in the Day-16 root directory.

This supports the verification that Terraform state is being stored in the remote backend.

### Screenshot

07-no-local-state-file.png

This screenshot shows the Day-16 directory without a local terraform.tfstate file.

---

## 16. Pull Remote Terraform State

### Command

terraform state pull

### Explanation

`terraform state pull` retrieves the current Terraform state from the configured backend.

Because the backend is remote, the command retrieves the state stored in MinIO.

The output is returned as JSON.

This command is useful for:

- Verifying remote state access
- Inspecting the complete state
- Troubleshooting backend problems
- Confirming that Terraform can read the remote state

No screenshot was required because the JSON output was only used for verification.

---

## 17. Final Terraform Plan

### Command

terraform plan

### Expected Result

No changes. Your infrastructure matches the configuration.

### Explanation

The final `terraform plan` verifies that the configuration and remote state are synchronized.

Since the resource was already created and its state is available from the remote backend, Terraform reports that no additional changes are required.

### Screenshot

08-remote-state-no-changes.png

This screenshot shows the final successful verification.

---

# Important New Commands Learned

## terraform init

Initializes Terraform and configures the backend.

terraform init

---

## terraform state list

Lists resources tracked in Terraform state.

terraform state list

---

## terraform state pull

Downloads the current state from the configured backend.

terraform state pull

---

## terraform plan

Shows the changes Terraform intends to make.

terraform plan

---

## terraform apply

Applies the Terraform configuration.

terraform apply

---

## docker run

Creates and starts a Docker container.

docker run

It was used to run MinIO for the remote state demonstration.

---

## docker ps

Displays running Docker containers.

docker ps

A name filter was used in this practical:

docker ps --filter "name=terraform-minio"

---

## Get-ChildItem -Force

Lists files and directories, including hidden items.

Get-ChildItem -Force

It was used to verify that a local terraform.tfstate file was not present.

---

# Complete Command List Used in Day-16

docker version

docker run -d `
  --name terraform-minio `
  -p 9000:9000 `
  -p 9001:9001 `
  -e MINIO_ROOT_USER=admin `
  -e MINIO_ROOT_PASSWORD=Minio12345 `
  minio/minio server /data --console-address ":9001"

docker ps --filter "name=terraform-minio"

$env:AWS_ACCESS_KEY_ID="admin"
$env:AWS_SECRET_ACCESS_KEY="Minio12345"

echo $env:AWS_ACCESS_KEY_ID

terraform init

terraform plan

terraform apply

terraform state list

Get-ChildItem -Force

terraform state pull

terraform plan

---

# Screenshot Mapping

| Screenshot | Command / Action | Purpose |
|---|---|---|
| 01-minio-bucket.png | MinIO Console | Shows remote state bucket |
| 02-remote-backend-init.png | terraform init | Shows backend initialization |
| 03-remote-state-plan.png | terraform plan | Shows planned resource |
| 04-remote-state-apply.png | terraform apply | Shows resource creation |
| 05-remote-state-object.png | MinIO Console | Shows remote terraform.tfstate |
| 06-remote-state-list.png | terraform state list | Shows resource in state |
| 07-no-local-state-file.png | Get-ChildItem -Force | Shows no local state file |
| 08-remote-state-no-changes.png | terraform plan | Shows final synchronization |

---

# Day-16 Summary

The main commands learned in this practical were:

- terraform init
- terraform plan
- terraform apply
- terraform state list
- terraform state pull
- docker run
- docker ps
- Get-ChildItem -Force

These commands were used to configure, create, inspect, and verify Terraform Remote State using a MinIO S3-compatible backend.