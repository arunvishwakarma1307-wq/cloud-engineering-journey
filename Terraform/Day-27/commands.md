# Day 27 - Terraform Commands

## 1. Initialize Terraform

```powershell
terraform init
```

Initializes the Terraform working directory and downloads the required provider.

## 2. Generate Terraform Dependency Graph

```powershell
terraform graph
```

Generates the Terraform dependency graph in DOT format.

Screenshot:
`01-terraform-graph.png`

## 3. Check Graphviz Installation

```powershell
dot -V
```

Checks whether the Graphviz `dot` command is available.

Result:
Graphviz was installed, but the `dot` command was not available through PATH.

## 4. Find Graphviz Executable

```powershell
Get-ChildItem "C:\Program Files\Graphviz" -Recurse -Filter dot.exe -ErrorAction SilentlyContinue
```

Finds the installed Graphviz `dot.exe` executable.

## 5. Verify Graphviz Directly

```powershell
& "C:\Program Files\Graphviz\bin\dot.exe" -V
```

Checks the installed Graphviz version.

Result:
`dot - graphviz version 16.1.0`

## 6. Save Terraform Graph to DOT File

```powershell
terraform graph | Out-File -FilePath .\graph.dot -Encoding ascii
```

Saves the Terraform dependency graph output into `graph.dot`.

## 7. Check DOT File

```powershell
Get-Content .\graph.dot
```

Displays the saved Terraform dependency graph.

## 8. Convert DOT File to PNG

```powershell
& "C:\Program Files\Graphviz\bin\dot.exe" -Tpng .\graph.dot -o .\dependency-graph.png
```

Converts the DOT graph into a PNG visual graph.

Screenshot:
`02-dependency-graph.png`

## 9. Check Generated PNG

```powershell
Get-Item .\dependency-graph.png
```

Checks whether the dependency graph PNG was created successfully.

## 10. Check Terraform Plan

```powershell
terraform plan
```

Checks the Terraform configuration and shows the resources Terraform plans to create.

## 11. Apply Terraform Configuration

```powershell
terraform apply
```

Applies the Terraform configuration and creates the resources.

Confirmation:

```text
yes
```

## 12. Refresh Dependency Graph

```powershell
terraform graph | Out-File -FilePath .\graph.dot -Encoding ascii
```

Regenerates the dependency graph after applying the configuration.

## 13. Update Dependency Graph PNG

```powershell
& "C:\Program Files\Graphviz\bin\dot.exe" -Tpng .\graph.dot -o .\dependency-graph.png
```

Updates the PNG dependency graph using the latest DOT file.

## 14. Verify Created Files

```powershell
Get-ChildItem .\first.txt, .\second.txt, .\third.txt
```

Checks that all three Terraform-managed files were created.

## 15. Verify File Contents

```powershell
Get-Content .\first.txt, .\second.txt, .\third.txt
```

Displays the contents of the created files.

Expected:

```text
First resource
Second resource
Third resource
```

## Error Encountered

The first attempt to convert `graph.dot` to PNG produced a syntax error because of a PowerShell file encoding issue.

The file was recreated using ASCII encoding:

```powershell
terraform graph | Out-File -FilePath .\graph.dot -Encoding ascii
```

After recreating the file with the correct encoding, Graphviz successfully converted the DOT file into a PNG image.

No screenshot was taken for the error.

## Screenshots

1. `01-terraform-graph.png` - Terraform dependency graph in DOT format
2. `02-dependency-graph.png` - Visual dependency graph generated using Graphviz