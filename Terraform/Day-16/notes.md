# Day 16 - Terraform Remote State & Remote Backend

## Terraform State

Terraform State is a file or data structure that stores information about the resources managed by Terraform.

Terraform uses state to keep track of the resources that have already been created and managed.

The state allows Terraform to compare the current configuration with the existing infrastructure and determine what changes are required.

---

## Why Terraform Needs State

Terraform uses state to:

- Track managed resources
- Store resource information
- Compare configuration with existing resources
- Detect changes
- Determine which resources need to be created, updated, or destroyed
- Maintain the relationship between Terraform configuration and infrastructure

Without state, Terraform would have difficulty knowing which resources it manages.

---

## Local State

By default, Terraform can store its state locally in a file named:

terraform.tfstate

Local state is suitable for simple individual projects and learning environments.

However, local state becomes difficult to manage when multiple people need to work on the same Terraform project.

---

## Remote State

Remote State means storing Terraform state in a remote storage system instead of keeping the state file only on the local computer.

Example:

Terraform
    ↓
Remote Backend
    ↓
Remote Storage
    ↓
terraform.tfstate

Remote state allows the Terraform state to be accessed from a shared location.

---

## Remote Backend

A Terraform backend determines where Terraform stores its state.

A remote backend stores the state outside the local working directory.

Benefits of remote backends include:

- Centralized state storage
- Shared access to state
- Better collaboration
- Easier state management
- Improved protection of state data
- Support for state locking with supported backends

---

## S3 Backend

Terraform provides an S3 backend for storing state in an Amazon S3 bucket or an S3-compatible object storage system.

The backend configuration can specify:

- Bucket
- State object key
- Region
- S3 endpoint when required

Example structure:

bucket/
└── project/
    └── terraform.tfstate

The key determines the path where the Terraform state object is stored.

---

## S3-Compatible Storage

S3-compatible storage provides an API that follows the Amazon S3 object-storage model.

It allows tools that support S3 to communicate with other storage systems that implement compatible APIs.

In this practical, MinIO was used as the S3-compatible storage system.

---

## MinIO

MinIO is an object-storage system that provides an S3-compatible API.

It can be used locally for learning and testing applications that normally work with S3-compatible storage.

In this practical, MinIO provided the remote storage location for Terraform state.

Architecture:

Terraform
    ↓
S3 Backend
    ↓
MinIO S3 API
    ↓
terraform-remote-state bucket
    ↓
day-16/terraform.tfstate

---

## Remote State Object

Terraform stores the state as an object inside the configured remote storage.

The bucket used in this practical was:

terraform-remote-state

The state object was stored at:

day-16/terraform.tfstate

The path can be represented as:

terraform-remote-state
└── day-16
    └── terraform.tfstate

---

## State and Configuration

Terraform configuration and Terraform state have different purposes.

### Terraform Configuration

Terraform configuration describes the desired infrastructure.

For example:

main.tf

It defines resources, providers, variables, outputs, and backend configuration.

### Terraform State

Terraform state records information about resources managed by Terraform.

For example:

terraform.tfstate

The configuration describes what should exist, while the state helps Terraform understand what it currently manages.

---

## Remote State vs Local State

| Feature | Local State | Remote State |
|---|---|---|
| Storage | Local computer | Remote storage |
| Accessibility | Mainly local | Shared/remote access |
| Collaboration | Limited | Better suited |
| State management | Manual/local | Centralized |
| Backend | Local backend | Remote backend |
| Example | terraform.tfstate | S3/MinIO object |

---

## State Commands

Terraform provides commands for inspecting and working with state.

### terraform state list

Lists the resources currently tracked in Terraform state.

### terraform state show

Displays detailed information about a particular resource stored in state.

### terraform state pull

Retrieves the current state from the configured backend.

### terraform show

Displays human-readable information about Terraform state or a plan.

These commands are useful for verifying and troubleshooting Terraform state.

---

## State Pull

The terraform state pull command retrieves the state from the configured backend.

When a remote backend is being used, this command can be used to verify that Terraform can successfully read the remote state.

The returned state is represented as JSON data.

---

## State Locking

State locking prevents multiple Terraform operations from modifying the same state at the same time.

Without locking, two Terraform operations could potentially modify the same state simultaneously and cause conflicts.

Remote backends can provide state-locking mechanisms depending on the backend and its configuration.

State locking is especially important in team environments.

---

## Benefits of Remote State

Remote state provides several important benefits.

### Centralized Storage

The state is stored in a shared remote location.

### Collaboration

Multiple team members can work with the same Terraform state.

### Consistency

Everyone works with the same state instead of separate local copies.

### State Locking

Supported remote backends can prevent simultaneous state modifications.

### Better Infrastructure Management

Remote state makes Terraform easier to use in larger and collaborative environments.

---

## Important Security Consideration

Terraform state can contain sensitive information depending on the resources being managed.

Therefore, remote state storage should be properly secured.

Important security practices include:

- Protect access to the backend
- Use appropriate credentials
- Restrict permissions
- Avoid exposing state publicly
- Protect state backups
- Use secure communication where applicable

---

## Backend Initialization

When a backend configuration is added or changed, Terraform normally requires backend initialization.

The terraform init command initializes the backend and prepares Terraform to use the configured state storage.

If an existing project changes from one backend to another, Terraform may also need to migrate existing state.

---

## Backend Metadata

Terraform stores backend-related metadata inside the .terraform directory.

The .terraform directory is a local working directory used by Terraform and should generally not be committed to Git.

---

## Remote Backend Workflow

A typical remote-state workflow is:

Write Terraform configuration
          ↓
Configure remote backend
          ↓
Initialize Terraform
          ↓
Create or update resources
          ↓
Terraform writes state
          ↓
Remote backend stores state
          ↓
Terraform reads state for future operations

---

## Key Concepts

- Terraform State
- Local State
- Remote State
- Terraform Backend
- Remote Backend
- S3 Backend
- S3-compatible Storage
- MinIO
- Remote State Object
- State Commands
- State Pull
- State Locking
- Backend Initialization
- State Security

---

## Conclusion

Terraform Remote State separates Terraform state storage from the local working directory.

A remote backend provides centralized state storage and makes Terraform more suitable for collaborative infrastructure management.

In this practical, MinIO was used as an S3-compatible storage system and Terraform was configured to store its state remotely.