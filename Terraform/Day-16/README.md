# Day 16 - Terraform Remote State & Remote Backend

## Objective

To understand and implement Terraform Remote State using an S3-compatible remote backend with MinIO.

---

## Practical Overview

In this practical, MinIO was used as an S3-compatible storage system for storing Terraform state remotely.

A MinIO bucket named:

terraform-remote-state

was created and Terraform was configured to store its state at:

day-16/terraform.tfstate

---

## Technologies Used

- Terraform
- MinIO
- Docker
- S3-compatible Remote Backend
- PowerShell

---

## Remote Backend Configuration

Terraform was configured with an S3 backend pointing to the local MinIO server:

http://localhost:9000

The remote state location was:

terraform-remote-state/day-16/terraform.tfstate

---

## Terraform Resource

A terraform_data resource was used to create a Terraform-managed state entry:

terraform_data.remote_state_demo

---

## Remote State Verification

The remote state was verified using:

terraform state list

The state contained:

terraform_data.remote_state_demo

The remote state was also directly retrieved using:

terraform state pull

---

## Local State Verification

The Day-16 working directory was checked using:

Get-ChildItem -Force

The local directory did not contain:

terraform.tfstate

This confirmed that the Terraform state was being stored in the configured remote backend.

---

## MinIO Verification

The MinIO console was used to verify the remote state object.

The state was visible under:

terraform-remote-state
└── day-16
    └── terraform.tfstate

---

## Final Verification

The configuration was verified using:

terraform plan

Result:

No changes. Your infrastructure matches the configuration.

This confirmed that Terraform was successfully reading the state from the remote backend.

---

## Screenshots

### 01 - MinIO Bucket

01-minio-bucket.png

Shows the creation of the terraform-remote-state bucket in MinIO.

### 02 - Remote Backend Initialization

02-remote-backend-init.png

Shows successful Terraform initialization with the S3-compatible backend.

### 03 - Remote State Plan

03-remote-state-plan.png

Shows the Terraform plan before creating the resource.

### 04 - Remote State Apply

04-remote-state-apply.png

Shows successful creation of the Terraform resource using the remote backend.

### 05 - Remote State Object

05-remote-state-object.png

Shows terraform.tfstate stored inside the MinIO day-16 path.

### 06 - Remote State List

06-remote-state-list.png

Shows the Terraform resource stored in the remote state.

### 07 - No Local State File

07-no-local-state-file.png

Shows that terraform.tfstate is not present in the local Day-16 working directory.

### 08 - Remote State No Changes

08-remote-state-no-changes.png

Shows the final Terraform plan with no configuration changes required.

---

## What I Learned

- Terraform Remote State
- Terraform Remote Backend
- S3 Backend
- S3-compatible storage
- MinIO
- Remote state object
- terraform state list
- terraform state pull
- Remote state verification
- Difference between local and remote state