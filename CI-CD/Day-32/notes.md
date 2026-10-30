# Day-32: GitHub Actions Workflow Security — Notes

## 1. What is Workflow Security?

Workflow security means protecting GitHub Actions workflows from unnecessary access and unauthorized changes.

## 2. What is GITHUB_TOKEN?

- GitHub automatically creates a `GITHUB_TOKEN` for each workflow run.
- It allows workflows to interact with repository resources.
- Its permissions should be limited according to the task.

## 3. What are Permissions?

Permissions define what a workflow can access or modify.

Example:

```yaml
permissions:
  contents: read
```

This gives the workflow read access to repository contents.

## 4. Read Permission

- Allows reading repository files.
- Does not grant permission to modify repository contents.
- Useful for workflows that only need to inspect or test code.

## 5. Principle of Least Privilege

A workflow should receive only the permissions it needs.

For example:
- Use `contents: read` when only reading repository files.
- Avoid write permissions if the workflow does not need them.
- Set permissions at the job level when different jobs need different access.

## 6. Job-Level Permissions

Example:

```yaml
jobs:
  security-check:
    runs-on: ubuntu-latest
    permissions:
      contents: read
```

This limits the permissions available to that job.

## 7. Security Best Practices

1. Give workflows minimum required permissions.
2. Avoid unnecessary write access.
3. Use trusted GitHub Actions.
4. Review third-party actions before using them.
5. Never expose tokens or secrets in logs.
6. Keep workflow files updated.

## 8. Practical Summary

In Day-32, I created a GitHub Actions workflow with read-only repository permissions and successfully executed it.

## 9. Important Point

Read-only permissions reduce unnecessary access, but they do not guarantee complete workflow security. Actions and scripts used by a workflow must also be reviewed.