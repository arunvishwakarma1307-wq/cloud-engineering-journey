# Day 04 - GitHub Actions Secrets & Secure Variables

## GitHub Actions Secrets

GitHub Actions Secrets are encrypted values used to store sensitive information that should not be written directly inside workflow files.

Examples of sensitive information include:

- API keys
- Access tokens
- Passwords
- Cloud credentials
- Deployment credentials
- Private configuration values

Secrets help keep sensitive information separate from the workflow code.

---

## Repository Secrets

A repository secret belongs to a specific GitHub repository.

It can be used by GitHub Actions workflows running in that repository.

Repository secrets are useful when a workflow needs access to sensitive information without storing that information directly in the GitHub repository.

---

## Secret Value Protection

The actual value of a GitHub Actions secret should never be written directly into a workflow file.

Instead of writing:

```yaml
PASSWORD: my-password
```

a workflow can reference a GitHub secret:

```yaml
PASSWORD: ${{ secrets.MY_SECRET }}
```

This keeps the sensitive value outside the workflow source code.

---

## GitHub Actions Secrets Context

GitHub Actions provides the `secrets` context to access configured secrets.

General syntax:

```text
${{ secrets.SECRET_NAME }}
```

`SECRET_NAME` is the name of the configured secret.

The workflow can use this value when required without hardcoding the secret into the YAML file.

---

## Environment Variables

Secrets can be passed to a workflow step through environment variables.

Example:

```yaml
env:
  API_TOKEN: ${{ secrets.API_TOKEN }}
```

The application or command running inside that step can then access the value through the environment variable.

This provides a cleaner separation between workflow logic and sensitive configuration.

---

## Secret Masking

GitHub Actions attempts to prevent secret values from appearing directly in workflow logs.

Even so, secrets should never be intentionally printed to logs.

For example, this should be avoided:

```bash
echo "$API_TOKEN"
```

Instead, workflows should only report whether an operation succeeded or failed.

---

## Repository Secrets vs Variables

GitHub Actions provides both **Secrets** and **Variables**.

### Secrets

Used for sensitive information.

Examples:

- Passwords
- Tokens
- API keys
- Private credentials

### Variables

Used for non-sensitive configuration values.

Examples:

- Application name
- Environment name
- Configuration flags

The main difference is that secrets are intended for sensitive data, while variables are intended for normal configuration data.

---

## Security Best Practices

Important practices when working with GitHub Actions secrets:

- Never hardcode passwords or tokens in workflow files.
- Never commit sensitive values to Git.
- Never intentionally print secrets in workflow logs.
- Use descriptive secret names.
- Give workflows only the access they actually need.
- Rotate sensitive credentials when required.
- Avoid storing unnecessary sensitive information.
- Use repository, environment, or organization secrets according to the required scope.

---

## Why Secrets Are Important in CI/CD

CI/CD workflows often interact with external systems such as:

- Cloud platforms
- Container registries
- Deployment servers
- APIs
- Databases
- Kubernetes clusters

These systems may require authentication.

Secrets allow the CI/CD workflow to authenticate without placing credentials directly into source code.

---

## Key Concept

The main idea is:

```text
Sensitive Value
      ↓
GitHub Secret
      ↓
GitHub Actions Workflow
      ↓
Environment Variable
      ↓
Command / Application
```

The sensitive value remains separate from the workflow source code.

---

## What I Learned

- GitHub Actions Secrets
- Repository Secrets
- Secrets Context
- Environment Variables
- Secret Masking
- Secrets vs Variables
- CI/CD Credential Security
- Secure handling of sensitive configuration