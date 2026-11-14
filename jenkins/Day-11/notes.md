# Day 11 - Jenkins Pipeline Manual Approval

## 1. What is Manual Approval?

Manual Approval is a Jenkins feature that pauses pipeline execution and waits for a user to approve or reject the next step.

It is useful when a deployment requires human permission before execution.

## 2. What is the input Step?

The `input` step is used to request manual approval during pipeline execution.

Example:

    stage('Manual Approval') {
        steps {
            input message: 'Do you approve the deployment?',
                  ok: 'Proceed'
        }
    }

Here:
- `input` pauses pipeline execution.
- `message` displays the approval question.
- `ok` defines the approval button label.

## 3. How Manual Approval Works

1. Jenkins starts pipeline execution.
2. Welcome stage executes.
3. Build stage executes.
4. Manual Approval stage pauses the pipeline.
5. Jenkins waits for user approval.
6. User clicks Proceed.
7. Pipeline continues to the Deploy stage.

## 4. Why Manual Approval is Important

- Prevents unauthorized deployment.
- Allows human review before production release.
- Adds control to CI/CD pipelines.
- Helps reduce accidental deployments.
- Supports approval-based workflows.

## 5. Real-World Use Cases

| Use Case | Purpose |
|---|---|
| Production Deployment | Get approval before production release |
| Application Release | Confirm release before publishing |
| Infrastructure Changes | Review changes before applying them |
| Critical Updates | Require approval before important updates |

## 6. Important Points

- The `input` step pauses pipeline execution.
- Jenkins waits until an approval decision is made.
- Clicking Proceed allows the pipeline to continue.
- Approval can be configured before sensitive stages.
- Manual approval can increase pipeline execution time because it waits for a person.

## 7. Day 11 Practical Learning

In this practical, I learned:

- What Jenkins Manual Approval is.
- How to use the `input` step.
- How to pause pipeline execution.
- How to provide approval using Proceed.
- How to continue deployment after approval.
- How to verify pipeline execution using Console Output and Stage View.

## Conclusion

Jenkins Manual Approval provides human control over pipeline execution. It is especially useful when approval is required before production deployment or other important operations.

Note: The Day 11 practical demonstrated the approval and deployment flow using echo statements. No actual application deployment was performed.