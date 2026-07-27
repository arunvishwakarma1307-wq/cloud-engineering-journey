# Day 21 - Commands Used

1. Create a new Helm Chart

```powershell
helm create my-chart
```

2. View the chart folder structure

```powershell
tree my-chart /F
```

3. Open Chart.yaml

```powershell
notepad my-chart\Chart.yaml
```

4. Open values.yaml

```powershell
notepad my-chart\values.yaml
```

5. View template files

```powershell
dir my-chart\templates
```

6. Install the custom Helm Chart

```powershell
helm install my-chart-release .\my-chart
```

7. Verify the Helm Release

```powershell
helm list
```