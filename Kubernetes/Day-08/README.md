# Day-08: Kubernetes ConfigMap


## Overview

In this day, I learned about Kubernetes ConfigMap and how configuration data can be managed separately from application containers.


## Topics Covered

- Creating ConfigMap
- Viewing ConfigMap details
- Using ConfigMap inside Pods
- Injecting ConfigMap values as environment variables


## Practical Implementation

Created a ConfigMap:

APP_COLOR=blue


Created a Pod using nginx image and connected it with ConfigMap.


Verified ConfigMap value inside container:

APP_COLOR=blue


## Screenshots

1. Create ConfigMap

2. Get ConfigMap

3. Describe ConfigMap

4. Create Pod with ConfigMap

5. Pod Running Status

6. Environment Variable Verification

7. Describe Pod


## Key Learning

ConfigMap allows Kubernetes applications to store and manage configuration separately from container images.