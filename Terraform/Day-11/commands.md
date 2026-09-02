# Day 11 - Terraform Resource Dependencies Commands

## Navigate to Day-11

    cd "C:\Users\ArunVishwakarma\Desktop\cloud engineering journey\Terraform\Day-11"

## 1. Initialize Terraform

Command:

    terraform init

Purpose:
Initialized the Terraform working directory and downloaded the required provider.

---

## 2. Validate Terraform Configuration

Command:

    terraform validate

Purpose:
Checked whether the Terraform configuration was syntactically and structurally valid.

---

## 3. Explicit Dependency - Plan

Command:

    terraform plan

Practical:
Verified the Terraform execution plan for the explicit dependency created using `depends_on`.

Screenshot:

    01-dependency-plan.png

---

## 4. Explicit Dependency - Apply and Verify

Command:

    terraform apply

Confirmation:

    yes

Verification command:

    Get-ChildItem -Filter "*.txt"

Practical:
Applied the configuration and verified that the dependent files were created.

Screenshot:

    02-explicit-dependency-created.png

---

## 5. Implicit Dependency - Plan

Command:

    terraform plan

Practical:
Verified the configuration where `local_file.second` references `local_file.first.filename`.

Terraform automatically detected the dependency without using `depends_on`.

Screenshot:

    03-implicit-dependency-plan.png

---

## 6. Implicit Dependency - Result

Command:

    Get-Content .\second.txt

Practical:
Verified that `second.txt` contained the value obtained from `local_file.first.filename`, demonstrating the implicit dependency.

Screenshot:

    04-implicit-dependency-result.png

---

## 7. Terraform Dependency Graph

Command:

    terraform graph

Practical:
Displayed the dependency graph and verified the relationship:

    local_file.second -> local_file.first

This confirmed that `local_file.second` depends on `local_file.first`.

Screenshot:

    05-dependency-graph.png

---

## 8. Final Terraform Verification

Command:

    terraform plan

Practical:
Performed the final plan verification.

Expected result:

    No changes. Your infrastructure matches the configuration.

This confirmed that the Terraform infrastructure matched the configuration.

---

## Screenshots Summary

1. `01-dependency-plan.png` - Explicit dependency plan
2. `02-explicit-dependency-created.png` - Explicit dependency apply and file verification
3. `03-implicit-dependency-plan.png` - Implicit dependency plan
4. `04-implicit-dependency-result.png` - Implicit dependency result verification
5. `05-dependency-graph.png` - Terraform dependency graph