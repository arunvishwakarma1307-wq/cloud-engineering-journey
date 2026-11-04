
# Day 02 - Jenkins Commands

## 1. Check Docker Version

```powershell
docker --version
```

## 2. Check Running Containers

```powershell
docker ps
```

## 3. Check All Containers

```powershell
docker ps -a
```

## 4. Start Jenkins Container

```powershell
docker start jenkins-day01
```

## 5. Check Jenkins Container Logs

```powershell
docker logs jenkins-day01
```

## 6. Open Jenkins Dashboard

```text
http://localhost:8080
```

## 7. Jenkins Build Parameter

Parameter Name:

```text
USER_NAME
```

Default Value:

```text
Arun
```

## 8. Shell Script Used in Jenkins

```bash
echo "=================================="
echo "Welcome to Jenkins Day 02"
echo "Hello, $USER_NAME!"
echo "Build Number: $BUILD_NUMBER"
echo "Job Name: $JOB_NAME"
echo "=================================="
```

## 9. Jenkins Environment Variables

| Variable | Description |
|---|---|
| USER_NAME | User-provided parameter |
| BUILD_NUMBER | Current build number |
| JOB_NAME | Jenkins job name |

## 10. Practical Verification

- Open Day02-Parameterized-Job.
- Click Build with Parameters.
- Enter USER_NAME.
- Click Build.
- Open Build History.
- Select the build number.
- Open Console Output.
- Verify the output and SUCCESS status.

## Result

Successfully completed Jenkins Day 02 practical using Build Parameters.
