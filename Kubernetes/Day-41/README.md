# Day 41 - Kubernetes InitContainers

## Objective

* Understand Kubernetes InitContainers.
* Understand the execution order of InitContainers and main containers.
* Verify that an InitContainer must complete before the main container starts.
* Verify successful InitContainer completion.
* Verify that the main container becomes ready after initialization.

---

## Practical Implementation

### 1. Create an InitContainer Pod

Created a Pod named `initcontainer-demo` with:

* An InitContainer named `init-setup`
* A main container named `main-container`
* `busybox:1.36` as the InitContainer image
* `nginx:1.27` as the main container image

The InitContainer executed:

```text id="j1yr3v"
Init Container started
Init Container completed
```

---

### 2. Verify InitContainer Execution

Checked the InitContainer logs and confirmed that the initialization task executed successfully.

**Screenshot:**

```text id="j72e5j"
01-initcontainer-execution.png
```

---

### 3. Verify Execution Order

Compared the completion time of the InitContainer with the start time of the main container.

The InitContainer completed before the main container started.

**Screenshot:**

```text id="n5r7bz"
02-initcontainer-execution-order.png
```

---

## Execution Flow

```text id="w6v2mb"
Pod Created
     ↓
InitContainer Starts
     ↓
Initialization Task
     ↓
InitContainer Completes
     ↓
Main Container Starts
     ↓
Main Container Ready
```

---

## Outcome

Successfully created and tested a Kubernetes Pod containing an InitContainer and verified that the InitContainer completes before the main application container starts.

---

## Key Concepts Learned

* InitContainers
* Initialization tasks
* InitContainer completion
* Container execution order
* Main container startup dependency
* InitContainer exit status
