# Day-27 Notes: Smart CI/CD Pipeline with Change Detection

## 1. What Is Change Detection?

Change detection checks which files have changed in a repository.

It helps a CI/CD workflow decide which jobs need to run.

## 2. What Are Path Filters?

Path filters match changes in specific files or folders.

In this practical, we configured filters for:
- `Kubernetes/**`
- `Terraform/**`
- `**/*.md`
- `CI-CD/Day-27/**`

## 3. What Is dorny/paths-filter?

`dorny/paths-filter@v3` is a GitHub Action that checks changed file paths against configured filters.

It provides outputs that other jobs can use in their conditions.

## 4. What Are Conditional Jobs?

Conditional jobs use the `if` expression to decide whether a job should run.

For example:

`if: needs.detect-changes.outputs.app_changed == 'true'`

This condition allows a job to run when application-related changes are detected.

## 5. Jobs Used in This Practical

- **detect-changes:** Detects matching file changes.
- **app-check:** Runs when Kubernetes or Terraform files change.
- **docs-check:** Runs when documentation changes.
- **no-relevant-changes:** Runs when neither category matches.

## 6. What Does Skipped Mean?

A skipped job is not necessarily a failure.

It can mean that the job's condition was not met.

In our manual test:
- `detect-changes` succeeded.
- `app-check` was skipped.
- `docs-check` was skipped.
- `no-relevant-changes` succeeded.

This was the expected result because no matching changes were detected.

## 7. Important Learning

The application and documentation jobs currently contain demonstration commands only.

They do not run actual Kubernetes, Terraform, or documentation tests.

## 8. Benefits of Change Detection

- Avoids unnecessary job execution.
- Helps organize CI/CD workflows.
- Makes job execution depend on relevant file changes.
- Can save CI/CD time in larger repositories.

## 9. Workflow Source

https://github.com/arunvishwakarma1307-wq/cloud-engineering-journey/blob/main/.github/workflows/day27-change-detection.yml