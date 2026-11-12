# Day 09 - Jenkins Pipeline when Conditions

## 1. What is a when Condition?

The `when` directive in Jenkins Declarative Pipeline is used to control whether a stage should execute or be skipped.

It checks a condition before running a stage.

If the condition matches, the stage executes.

If the condition does not match, Jenkins skips that stage.

## 2. Why do We Use when Conditions?

- To control stage execution.
- To run stages only when specific conditions are satisfied.
- To manage development, testing, and production workflows.
- To avoid executing unnecessary stages.

## 3. Environment Condition

The `environment` condition checks whether an environment variable has a specific value.

Example:

    when {
        environment name: 'APP_ENVIRONMENT', value: 'development'
    }

Explanation:

- `environment` checks an environment variable.
- `name` specifies the variable name.
- `value` specifies the expected value.

The stage executes only when both values match.

## 4. How when Works in a Pipeline

Example:

    environment {
        APP_ENVIRONMENT = 'development'
    }

    stage('Development Deployment') {
        when {
            environment name: 'APP_ENVIRONMENT', value: 'development'
        }
        steps {
            echo 'Running Development Deployment'
        }
    }

In this example:
- APP_ENVIRONMENT contains `development`.
- The condition matches.
- The Development Deployment stage executes.

## 5. Skipping a Stage

If a condition does not match, Jenkins skips the stage.

Example:

    stage('Production Deployment') {
        when {
            environment name: 'APP_ENVIRONMENT', value: 'production'
        }
        steps {
            echo 'Running Production Deployment'
        }
    }

Since our variable contains `development`, the Production Deployment stage is skipped.

Jenkins displays a message similar to:

    Stage "Production Deployment" skipped due to when conditional

## 6. when vs if-else

| when | if-else |
|---|---|
| Used in Declarative Pipeline stages | Used for conditional logic inside script code |
| Controls stage execution | Controls which code block executes |
| Written inside a stage | Written inside Groovy script logic |

## 7. Real-World Use Cases

- Run testing stages only for development.
- Run production stages only for production.
- Execute deployment stages based on selected environments.
- Skip unnecessary stages based on project conditions.

## 8. Day 09 Practical Learning

In this practical, I learned:

- What Jenkins `when` conditions are.
- How to check environment variable values.
- How to execute a stage when a condition matches.
- How Jenkins skips stages when conditions do not match.
- How to verify conditional execution through Console Output.

## Conclusion

The `when` directive helps create flexible Jenkins Pipelines by controlling stage execution according to defined conditions.