# Day 31 - Kubernetes Secrets

## Objective

Learn how to securely store sensitive information in Kubernetes using Secrets, understand the difference between ConfigMaps and Secrets, decode Secret values, and use Secrets inside Pods through Environment Variables.

---

## Practical Implementation

### Screenshot 1 - View Existing Secrets

Checked the existing Secrets available in the Kubernetes cluster before creating a new Secret.

### Screenshot 2 - Create Secret

Created a Kubernetes Secret named `app-secret` using literal values.

The Secret stores sensitive application information separately from the application code.

### Screenshot 3 - Describe Secret

Viewed the Secret details using `kubectl describe`.

Verified that Kubernetes hides the actual values and displays only the size of stored data.

### Screenshot 4 - View Secret YAML

Exported the Secret in YAML format.

Observed that Kubernetes stores Secret values in Base64 encoded format.

### Screenshot 5 - Decode Database Password

Decoded the Base64 encoded database password and verified the original value.

### Screenshot 6 - Decode API Key

Decoded the stored API key and confirmed the original value.

### Screenshot 7 - Create Pod Using Secret

Created a Pod that consumes Secret values as Environment Variables.

Verified that the Pod started successfully.

### Screenshot 8 - Verify Environment Variables

Executed commands inside the running Pod and confirmed that the Secret values were successfully injected as Environment Variables.

Verified:

- DB_PASSWORD = MyPassword123
- API_KEY = ABC123XYZ

### Screenshot 9 - Delete Demo Pod

Deleted the demonstration Pod after verification.

The Secret remained available inside the Kubernetes cluster even after deleting the Pod.

---

## Screenshots

- 01-current-secrets.png
- 02-create-secret.png
- 03-describe-secret.png
- 04-secret-yaml.png
- 05-decode-db-password.png
- 06-decode-api-key.png
- 07-secret-pod-running.png
- 08-secret-environment-variables.png
- 09-delete-secret-pod.png

---

## Key Concepts Learned

- Kubernetes Secrets are used to store sensitive information.
- Secret values are stored in Base64 encoded format.
- Secrets are different from ConfigMaps because they are intended for confidential data.
- Secrets can be injected into Pods as Environment Variables.
- Secret values can be decoded when required.
- Deleting a Pod does not remove the Secret.
- Secrets improve application security by separating sensitive configuration from application code.

---

## Outcome

Successfully created a Kubernetes Secret, inspected its metadata, viewed its YAML representation, decoded Base64 encoded values, injected the Secret into a Kubernetes Pod as Environment Variables, verified the values from inside the running container, and cleaned up the demonstration Pod while preserving the Secret. This practical demonstrated secure configuration management in Kubernetes and introduced the recommended approach for handling passwords, API keys, and other confidential application data.