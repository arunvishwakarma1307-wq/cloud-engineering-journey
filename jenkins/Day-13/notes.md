
# Day 13 - Jenkins Credentials Management

## 1. What is Jenkins Credentials Management?

Jenkins Credentials Management is a feature that allows users to securely store sensitive information such as usernames, passwords, SSH keys, and secret tokens.

Instead of writing sensitive information directly inside Pipeline scripts, Jenkins stores credentials securely and provides access when required.

### Benefits

- Secure storage of sensitive information.
- Avoids hardcoding passwords in Pipeline scripts.
- Allows credentials to be reused across Jenkins jobs.
- Helps protect confidential information.
- Supports secure authentication with external services.

## 2. What are Jenkins Credentials?

Credentials are sensitive authentication details stored inside Jenkins.

Examples:
- Username and Password
- Secret Text
- SSH Username with Private Key
- Secret File

Jenkins provides different credential types depending on authentication requirements.

## 3. Types of Jenkins Credentials

### Username with Password

Stores a username and password together.

Example use cases:
- Application login
- Repository authentication
- Service authentication

### Secret Text

Stores a single secret value such as an API token.

Example use cases:
- API keys
- Access tokens
- Secret values

### SSH Username with Private Key

Stores an SSH username and private key.

Example use cases:
- SSH server authentication
- Remote server access
- Secure Git operations

### Secret File

Stores a file containing sensitive information.

Example use cases:
- Configuration files
- Authentication files
- Certificates

## 4. Credential Scope

Scope determines where a credential can be accessed.

### Global

A Global credential can be accessed by jobs throughout Jenkins, subject to permissions.

### System

A System credential is intended for Jenkins system-level functions rather than ordinary Pipeline jobs.

In this practical, we used Global scope.

## 5. Credential ID

Every Jenkins credential has a unique ID.

Example:

jenkins-demo-credential

The credential ID is used inside Pipeline scripts to identify which stored credential should be accessed.

Example:

credentialsId: 'jenkins-demo-credential'

## 6. What is withCredentials?

withCredentials is a Jenkins Pipeline step used to access stored credentials securely.

It makes credentials available through environment variables inside its block.

Example:

withCredentials([
    usernamePassword(
        credentialsId: 'jenkins-demo-credential',
        usernameVariable: 'DEMO_USERNAME',
        passwordVariable: 'DEMO_PASSWORD'
    )
]) {
    echo "Username: ${DEMO_USERNAME}"
}

### Explanation

- withCredentials: Accesses stored Jenkins credentials.
- usernamePassword: Specifies the credential type.
- credentialsId: Identifies the stored credential.
- usernameVariable: Stores the username in an environment variable.
- passwordVariable: Stores the password in an environment variable.

## 7. Environment Variables for Credentials

Environment variables allow Pipeline steps to access credential values.

In this practical:

| Variable | Purpose |
|---|---|
| DEMO_USERNAME | Stores the username |
| DEMO_PASSWORD | Stores the password |

These variables are available inside the withCredentials block.

The password should not be printed in console output.

## 8. Credential Masking

Jenkins attempts to mask supported secret values in console logs when they are printed.

However, masking is not a complete security guarantee.

Best practices:

- Never print passwords or secret tokens.
- Never hardcode credentials in Pipeline scripts.
- Avoid exposing secrets in build logs.
- Restrict access to Jenkins credentials.
- Use credentials only when required.
- Do not share real credentials in screenshots.

## 9. Practical Execution Summary

In Day 13, the following practical was completed:

1. Opened Manage Jenkins.
2. Navigated to Credentials Manager.
3. Opened Global credentials.
4. Created a Username with Password credential.
5. Used a dummy username and password.
6. Created a Jenkins Pipeline job.
7. Used withCredentials in the Pipeline.
8. Accessed the username and password through environment variables.
9. Verified password availability without printing its value.
10. Executed the Pipeline successfully.

### Jenkins Job

Day13-Pipeline-Credentials

### Credential ID

jenkins-demo-credential

### Build Result

Build #1: FAILURE (initial Pipeline syntax error)

Build #2: SUCCESS (after correcting the Pipeline script)

## 10. Difference Between Hardcoded Credentials and Jenkins Credentials

| Hardcoded Credentials | Jenkins Credentials |
|---|---|
| Written directly in scripts | Stored in Jenkins |
| Difficult to manage securely | Centralized credential management |
| Can accidentally appear in source code | Can be accessed through credential bindings |
| Reuse requires copying values | Can be reused by authorized jobs |

## 11. Real-World Use Cases

Jenkins Credentials Management is useful for:

- Connecting Jenkins to Git repositories.
- Authenticating with cloud platforms.
- Accessing remote servers through SSH.
- Using API tokens.
- Connecting to private container registries.
- Deploying applications securely.

## 12. Important Points to Remember

- Never hardcode passwords in Pipeline scripts.
- Use Jenkins Credentials Manager to store secrets.
- Use unique credential IDs.
- Use withCredentials to access stored secrets.
- Avoid printing passwords in console output.
- Protect credentials with proper access permissions.
- Use dummy credentials for practice environments.

## Conclusion

Jenkins Credentials Management provides a centralized way to store and access sensitive information.

In this practical, a Username with Password credential was created and accessed through a Jenkins Pipeline using withCredentials.

The Pipeline successfully verified credential availability without displaying the password.

**Day 13 Status: Completed**
