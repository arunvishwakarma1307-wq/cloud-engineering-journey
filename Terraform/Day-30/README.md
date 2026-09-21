# Day 30 - Terraform Provider Dependency Locking

## Practical Summary

In this practical, I learned how Terraform manages provider dependency locking using the `.terraform.lock.hcl` file.

A Terraform configuration was created using the HashiCorp Local provider with a version constraint. After running `terraform init`, Terraform generated the `.terraform.lock.hcl` file containing the selected provider version, version constraint, and provider checksums.

The `terraform providers` command was used to inspect the provider required by the Terraform configuration.

The `terraform providers lock` command was then used to validate the provider lock information and confirm that the required provider checksums were already tracked in the lock file.

The provider version constraint was changed from `~> 2.5` to `~> 2.8`. Terraform was then reinitialized using `terraform init -upgrade` and the lock file was updated to reflect the current provider constraint while keeping the compatible provider version `2.9.1`.

The configuration was validated using `terraform validate`.

Finally, the Terraform configuration was planned and applied successfully. A `local_file` resource created `lock-demo.txt`, and a final `terraform plan` confirmed that there were no remaining infrastructure changes.

## Screenshots

1. `01-initial-lock-file.png` - Initial Terraform provider lock file
2. `02-providers-lock.png` - Successful `terraform providers lock` validation
3. `03-updated-lock-constraint.png` - Updated provider version constraint in the lock file
4. `04-terraform-validate.png` - Successful Terraform configuration validation
5. `05-final-resource-result.png` - Verification of the created file
6. `06-final-no-changes.png` - Final Terraform plan showing no pending changes

## Final Result

Terraform successfully generated and managed the provider dependency lock file.

The Local provider was locked at version `2.9.1` with the `~> 2.8` constraint, and the provider checksums were successfully tracked in `.terraform.lock.hcl`.

The Terraform configuration was validated and applied successfully. The `lock-demo.txt` file was created, and the final Terraform plan confirmed that the infrastructure matched the configuration with no pending changes.

## What I Learned

- Terraform provider dependency locking
- `.terraform.lock.hcl`
- Provider version constraints
- Provider versions
- Provider checksums
- `terraform providers`
- `terraform providers lock`
- `terraform init -upgrade`
- Provider dependency verification
- Terraform configuration validation
- Managing provider dependencies in Git