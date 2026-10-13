
# Day-16 Notes: GitHub Actions Matrix Strategy

## 1. What is Matrix Strategy?

Matrix Strategy is a feature in GitHub Actions that allows the same job to run with multiple configuration values.

Instead of writing separate jobs for each configuration, we can define the values once using `strategy.matrix`.

## 2. Why Use Matrix Strategy?

Matrix Strategy helps to:
- Reduce repeated workflow code.
- Test applications across multiple configurations.
- Run multiple jobs automatically.
- Make workflows easier to maintain.

## 3. How Does It Work?

GitHub Actions reads the values defined in the matrix and creates a separate job for each configuration.

For example, if a matrix contains three environments:
- Development
- Staging
- Production

GitHub Actions creates three separate jobs, one for each environment.

## 4. Important Keywords

### `strategy`
Defines how a job should run under different configurations.

### `matrix`
Contains the configuration values used to create multiple job variations.

### `matrix.environment`
Accesses the current value of the `environment` variable for a particular matrix job.

### `runs-on`
Specifies the runner environment on which a job executes.

## 5. Matrix Strategy vs Separate Jobs

Without Matrix Strategy, we may need to define a separate job for every configuration.

With Matrix Strategy, we define the configurations in one place, and GitHub Actions creates the corresponding jobs automatically.

## 6. Important Points

- Each matrix combination creates a separate job.
- Each job has its own logs and status.
- Matrix jobs can run in parallel, depending on available runner capacity and workflow settings.
- A matrix does not automatically deploy an application; deployment requires suitable deployment steps.
- Matrix Strategy is useful for testing different operating systems, software versions, environments, and configurations.

## 7. Key Takeaway

GitHub Actions Matrix Strategy makes workflows more reusable by running the same job across multiple configurations without duplicating the entire job definition.