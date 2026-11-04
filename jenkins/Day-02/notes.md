
# Day 02 - Jenkins Build Parameters Notes

## 1. What are Jenkins Build Parameters?

Build Parameters allow users to provide input before starting a Jenkins build.

They make Jenkins jobs more flexible and reusable.

## 2. What is a Parameterized Job?

A Parameterized Job is a Jenkins job that accepts user input before execution.

Example:
- Username
- Environment
- Application Version

## 3. What is a String Parameter?

A String Parameter allows users to enter text as input.

In today's practical:

- Parameter Type: String Parameter
- Parameter Name: USER_NAME
- Default Value: Arun

## 4. What is Build with Parameters?

Build with Parameters is an option in Jenkins that allows users to enter parameter values before starting a build.

## 5. Jenkins Environment Variables

Jenkins provides built-in environment variables during build execution.

| Variable | Meaning |
|---|---|
| USER_NAME | User-provided parameter |
| BUILD_NUMBER | Current build number |
| JOB_NAME | Jenkins job name |

## 6. Shell Script Used

```bash
echo "Welcome to Jenkins Day 02"
echo "Hello, $USER_NAME!"
echo "Build Number: $BUILD_NUMBER"
echo "Job Name: $JOB_NAME"
```

## 7. What is Console Output?

Console Output displays the logs generated during a Jenkins build.

It helps us:
- Check build execution.
- Find errors.
- Verify command output.
- Check build status.

## 8. Important Learning

- Build Parameters accept user input.
- String Parameters accept text values.
- Build with Parameters starts a parameterized build.
- Environment variables provide build information.
- Console Output helps verify build results.

## 9. Practical Result

Created and successfully executed a Parameterized Freestyle Project named:

`Day02-Parameterized-Job`

Build Number: 1

Entered Username: Arun

Build Status: SUCCESS
