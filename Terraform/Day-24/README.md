# Day 24 - Terraform Remote State Data Source

## Practical Summary

Day 24 covered the Terraform `terraform_remote_state` data source.

In this practical, two separate Terraform projects were created:

- **Source** - Created a file and stored its value as a Terraform output.
- **Consumer** - Read the source project's `terraform.tfstate` using `terraform_remote_state`.

The consumer project successfully retrieved the `source_message` output from the source state and used it to create `consumer-data.txt`.

The final verification showed that the consumer received the correct value from the source Terraform state.

## Screenshots

1. `01-source-plan.png`
2. `02-source-apply.png`
3. `03-source-output.png`
4. `04-remote-state-consumer-plan.png`
5. `05-remote-state-consumer-apply.png`
6. `06-remote-state-retrieved-output.png`
7. `07-consumer-file-result.png`

## Final Result

The source Terraform project successfully provided an output, and the consumer Terraform project successfully read and used that output through `terraform_remote_state`.