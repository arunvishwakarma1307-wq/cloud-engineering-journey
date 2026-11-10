# Day 08 - Jenkins Pipeline Environment Variables

## 1. What are Environment Variables?

Environment variables are named values that store information used by applications, scripts, and pipelines.

In Jenkins, environment variables help pipelines access configuration details without repeatedly writing the same values.

Examples:
- Application name
- Deployment environment
- Deployment region
- Build number

## 2. Custom Environment Variables

Custom environment variables are created by developers according to project requirements.

In a Declarative Pipeline, we can define them using the `environment` block.

Example:

    environment {
        APP_NAME = 'Cloud Guard'
        APP_ENVIRONMENT = 'development'
        DEPLOY_REGION = 'ap-south-1'
    }

These variables can be accessed in pipeline steps.

## 3. Accessing Variables Using env

Jenkins provides the `env` object to access environment variables in Pipeline scripts.

Example:

    echo "Application Name: ${env.APP_NAME}"
    echo "Environment: ${env.APP_ENVIRONMENT}"

Here:
- `env` is the Jenkins environment object.
- `APP_NAME` is the variable name.
- `${...}` allows the value to be used inside a Groovy string.

## 4. Jenkins Built-in Environment Variables

Jenkins automatically provides several environment variables during a build.

| Variable | Description |
|---|---|
| JOB_NAME | Name of the Jenkins job |
| BUILD_NUMBER | Current build number |
| BUILD_URL | URL of the current build |
| WORKSPACE | Directory where the job performs its work |

These variables provide useful information about the current build.

## 5. Custom vs Built-in Variables

**Custom Variables:**
- Created by the developer.
- Used for project-specific configuration.
- Example: `APP_NAME`.

**Built-in Variables:**
- Provided automatically by Jenkins.
- Used to access job and build information.
- Example: `BUILD_NUMBER`.

## 6. Environment Variable Scope

In Declarative Pipelines, an `environment` block can be defined at different levels.

- Pipeline-level: Variables are available throughout the pipeline.
- Stage-level: Variables are available only within that stage.

Our practical used pipeline-level environment variables.

## 7. Why Environment Variables Are Useful

- Avoid repeating configuration values.
- Make pipelines easier to maintain.
- Help manage different application environments.
- Provide useful build and workspace information.

**Security Note:** Passwords, API keys, and other secrets should not be stored as plain-text environment variables in a Pipeline script. Jenkins Credentials should be used for sensitive information.

## 8. Day 08 Learning Summary

In this practical, I learned:

- How to define custom environment variables.
- How to use the Declarative Pipeline `environment` block.
- How to access values using the `env` object.
- How to read Jenkins built-in environment variables.
- How to verify variable values through Console Output.

## Conclusion

Environment variables make Jenkins Pipelines more flexible, reusable, and easier to maintain.