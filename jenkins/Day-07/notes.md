# Day 07 - Jenkins Pipeline Parameters Notes

## 1. What are Jenkins Parameters?

Jenkins Parameters allow users to provide input values before starting a build.

These values can be accessed inside a Jenkins job or Pipeline.

Parameters help make jobs flexible because users can change input values without modifying the Pipeline script.

## 2. What is a Parameterized Pipeline?

A Parameterized Pipeline is a Jenkins Pipeline that accepts user-defined input before execution.

Users can select or enter values using the Build with Parameters option.

In our practical, we created a parameterized Pipeline named:

Day07-Pipeline-Parameters

## 3. What is Choice Parameter?

A Choice Parameter allows users to select one option from a predefined list.

It is useful when a Pipeline needs to support multiple predefined environments or configurations.

In our practical, we created a Choice Parameter named:

APP_ENVIRONMENT

Available choices:
- development
- staging
- production

## 4. What is Build with Parameters?

Build with Parameters is a Jenkins option used to start a build with user-selected parameter values.

It allows users to select the required input before executing a Pipeline.

In our practical, we used it to execute the Pipeline with different environments.

## 5. What is params in Jenkins Pipeline?

The `params` object is used to access parameter values inside a Jenkins Pipeline script.

It allows the Pipeline to read values provided by users.

Example:

params.APP_ENVIRONMENT

This expression reads the selected value of the APP_ENVIRONMENT parameter.

## 6. What is an Application Environment?

An application environment is a separate setup used during software development and delivery.

Common environments include:

### Development
Used by developers to build and test new application features.

### Staging
Used to verify an application in an environment similar to production before release.

### Production
The live environment where the application is available to actual users.

## 7. Why Use Pipeline Parameters?

Pipeline parameters provide several benefits:

- Allow users to provide input before a build.
- Make Pipeline execution flexible.
- Support multiple environment selections.
- Avoid modifying scripts for every input change.
- Improve automation workflow management.

## 8. What is Environment-Based Pipeline Execution?

Environment-Based Pipeline Execution means running the same Pipeline with different environment values.

For example:
- Development
- Staging
- Production

The Pipeline can use the selected value to decide which environment-specific tasks to perform.

## 9. What is Console Output?

Console Output displays logs generated during Pipeline execution.

It helps verify:
- Selected parameter values.
- Executed Pipeline stages.
- Execution messages.
- Build completion status.

## 10. Practical Learning Summary

In this practical, we learned:

- Jenkins Pipeline Parameters.
- Parameterized Pipeline Job creation.
- Choice Parameter configuration.
- Build with Parameters.
- Accessing parameter values using params.
- Development environment testing.
- Staging environment testing.
- Console Output verification.

---

Cloud Engineering Journey - Day 07