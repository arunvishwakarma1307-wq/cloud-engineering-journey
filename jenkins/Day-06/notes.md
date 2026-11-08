# Day 06 - Jenkins Pipeline Post Actions Notes

## 1. What are Jenkins Pipeline Post Actions?

Post Actions are instructions that Jenkins executes after a Pipeline or its stages finish running.

They help perform additional tasks based on the final build result.

Examples:
- Displaying success messages.
- Displaying failure messages.
- Sending notifications.
- Cleaning up temporary resources.

## 2. What is the Post Block?

The post block is used inside a Declarative Pipeline to define actions that execute after Pipeline execution.

It contains different conditions such as:
- success
- failure
- always

## 3. What is the Success Condition?

The success condition executes only when the Pipeline completes successfully.

It is useful for:
- Displaying successful build messages.
- Sending success notifications.
- Recording successful execution.

In our practical, we verified the success condition using Build #1.

## 4. What is the Failure Condition?

The failure condition executes when the Pipeline fails.

It is useful for:
- Displaying error messages.
- Sending failure notifications.
- Reporting failed builds.

In our practical, we intentionally added an error inside the Test stage to verify this condition.

## 5. What is the Always Condition?

The always condition executes regardless of whether the Pipeline succeeds or fails.

It is useful for:
- Cleaning up temporary files.
- Generating reports.
- Performing common post-build tasks.
- Displaying completion messages.

In our practical, the always condition executed in both Build #1 and Build #2.

## 6. Difference Between Success, Failure and Always

| Condition | When It Executes |
|---|---|
| success | When the Pipeline succeeds |
| failure | When the Pipeline fails |
| always | After every Pipeline result |

## 7. What is Intentional Failure Testing?

Intentional Failure Testing means deliberately introducing an error to verify how a Pipeline handles failure.

In our practical, we used the Jenkins error step inside the Test stage.

This caused Build #2 to fail and allowed us to verify the failure post condition.

## 8. What is Build Status?

Build Status represents the final result of a Jenkins build.

Common statuses include:
- SUCCESS
- FAILURE
- UNSTABLE
- ABORTED

## 9. What is Console Output?

Console Output displays the logs generated during Pipeline execution.

It helps verify:
- Which stages executed.
- Which post conditions executed.
- Whether the Pipeline succeeded or failed.
- Error messages and execution details.

## 10. What is Pipeline Stage View?

Pipeline Stage View provides a visual representation of Pipeline stages.

It helps identify:
- Successful stages.
- Failed stages.
- Stage execution status.
- Overall Pipeline progress.

## 11. Practical Learning Summary

In this practical, we learned:

- Jenkins Pipeline Post Actions.
- Post block configuration.
- Success condition.
- Failure condition.
- Always condition.
- Intentional failure testing.
- Successful and failed build verification.
- Console Output and Stage View.

---

Cloud Engineering Journey - Day 06