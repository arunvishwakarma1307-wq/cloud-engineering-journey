# Day 05 - Jenkins Pipeline Notes

## 1. What is Jenkins Pipeline?

Jenkins Pipeline is a feature used to automate the software delivery process.

It allows us to define multiple tasks in a single workflow and execute them in a specific order.

A Pipeline can automate activities such as:
- Building applications.
- Running tests.
- Deploying applications.
- Executing multiple stages automatically.

## 2. What is a Pipeline Job?

A Pipeline Job is a Jenkins job that executes a Pipeline script.

Unlike a Freestyle Project, a Pipeline Job allows us to define the complete workflow using code.

In our practical, we created a Pipeline Job named:

Day05-Pipeline-Job

## 3. What is Declarative Pipeline?

Declarative Pipeline is a structured way to define Jenkins Pipeline workflows.

It uses a predefined syntax that makes Pipeline scripts easier to read and maintain.

A Declarative Pipeline generally contains:
- pipeline
- agent
- stages
- stage
- steps

## 4. What is the Pipeline Block?

The pipeline block is the main structure of a Declarative Pipeline.

It contains the configuration and stages required to execute the workflow.

All Pipeline instructions are defined inside this block.

## 5. What is Agent?

The agent specifies where the Jenkins Pipeline or its stages should execute.

The agent any option allows Jenkins to execute the Pipeline on any available agent.

An agent provides the environment in which Pipeline tasks run.

## 6. What are Stages?

Stages divide a Pipeline into logical sections.

Each stage represents a major part of the workflow.

For example:
- Welcome
- Build
- Test
- Deploy

In our practical, we created three stages:
1. Welcome
2. Build
3. Deploy

## 7. What are Steps?

Steps are individual tasks executed inside a stage.

A stage can contain one or more steps.

In our practical, we used the echo step to display messages in Jenkins Console Output.

## 8. What is Groovy?

Groovy is a programming language used by Jenkins Pipeline to define automation workflows.

Jenkins Pipeline scripts use Groovy-based syntax.

It allows developers to define stages, steps, conditions and automation logic.

## 9. What is Pipeline Execution?

Pipeline Execution is the process of running the stages and steps defined in a Pipeline script.

Jenkins executes the stages according to their defined order.

In our practical, the execution order was:

1. Welcome Stage
2. Build Stage
3. Deploy Stage

## 10. What is Pipeline Stage View?

Pipeline Stage View provides a visual representation of Pipeline execution.

It displays individual stages and their execution status.

It helps us identify:
- Successful stages.
- Failed stages.
- Stage execution time.
- Overall Pipeline progress.

## 11. What is Console Output?

Console Output displays the logs generated during Pipeline execution.

It helps us verify:
- Which stages were executed.
- Which messages were displayed.
- Whether any errors occurred.
- Whether the Pipeline completed successfully.

## 12. Declarative Pipeline vs Freestyle Project

| Declarative Pipeline | Freestyle Project |
|---|---|
| Workflow is defined using a Pipeline script. | Workflow is configured through the Jenkins UI. |
| Supports multiple stages. | Uses configured build steps. |
| Pipeline is defined as code. | Configuration is mainly UI-based. |
| Suitable for complex automation workflows. | Suitable for simpler jobs. |

## 13. Practical Learning Summary

In this practical, we learned:

- Jenkins Pipeline introduction.
- Pipeline Job creation.
- Declarative Pipeline structure.
- Agent configuration.
- Stages and Steps.
- Groovy-based Pipeline scripts.
- Pipeline execution.
- Stage View verification.
- Console Output verification.

---

Cloud Engineering Journey - Day 05