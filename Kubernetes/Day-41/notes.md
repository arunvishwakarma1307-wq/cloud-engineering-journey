# Day 41 - Kubernetes InitContainers

## What is an InitContainer?

An InitContainer is a special container that runs during Pod initialization before the main application containers start.

It is commonly used for preparation tasks such as:

* Initial configuration
* Preparing files
* Waiting for a dependency
* Running setup commands
* Performing initialization checks

---

## InitContainer vs Main Container

```text id="zq1b8h"
InitContainer
      ↓
Runs first
      ↓
Must complete successfully
      ↓
Main Container
      ↓
Application starts
```

Unlike normal application containers, InitContainers are expected to finish their task.

---

## InitContainer Configuration

Example:

```yaml id="7k9vzt"
initContainers:
  - name: init-setup
    image: busybox:1.36
    command:
      - sh
      - -c
      - "echo Init Container started; sleep 5; echo Init Container completed"
```

The `sleep 5` was used to make the initialization process observable during the practical.

---

## Main Container

The main container used:

```yaml id="h5h0yw"
containers:
  - name: main-container
    image: nginx:1.27
```

The main container starts only after the InitContainer completes successfully.

---

## Execution Order

The practical verified:

```text id="z6gq0m"
InitContainer finishedAt
          ↓
Main Container startedAt
```

The InitContainer's completion timestamp was earlier than the main container's start timestamp.

This proves the initialization dependency.

---

## Exit Code

An InitContainer that finishes with exit code `0` is considered successful.

In the practical, the InitContainer completed successfully.

---

## Why InitContainers are Useful

InitContainers are useful when an application needs some preparation before starting.

For example:

```text id="k0j8fd"
Prepare configuration
        ↓
Check dependency
        ↓
Initialize files
        ↓
Start application
```

This keeps initialization logic separate from the main application container.

---

## Important Observations

* InitContainers run before application containers.
* All InitContainers must complete successfully before the main containers start.
* InitContainers can contain commands or scripts used for initialization.
* The main container does not start before initialization is completed.
* InitContainer logs can be checked separately using its container name.
* InitContainers are useful for separating setup logic from application logic.
