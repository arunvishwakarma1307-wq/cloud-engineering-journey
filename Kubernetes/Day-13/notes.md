# Day-13 Notes: Kubernetes Health Probes


## Health Probes

Kubernetes Health Probes are used to monitor the health and availability of containers.


## Liveness Probe

- Checks whether the container is alive.
- If the probe fails, Kubernetes restarts the container.
- Helps detect application failures.


## Readiness Probe

- Checks whether the application is ready to accept traffic.
- If the probe fails, the Pod is removed from Service traffic.
- Container is not restarted.


## Startup Probe

- Used for slow-starting applications.
- Gives extra time for application initialization.
- Other probes wait until startup probe succeeds.


## Important Points

- Liveness = Container health check.
- Readiness = Traffic availability check.
- Startup = Application startup handling.
- Probes improve reliability of Kubernetes applications.