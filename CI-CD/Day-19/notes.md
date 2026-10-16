
# Day-19 Notes: GitHub Actions Artifacts

## 1. What Is an Artifact?

An artifact is a file or collection of files produced during a workflow run that can be stored and downloaded later.

Examples:
- Test reports
- Build output files
- Log files
- Generated documents

## 2. Why Are Artifacts Useful?

Artifacts help us save workflow output so that we can inspect, download, or share it after a workflow finishes.

## 3. Uploading an Artifact

GitHub Actions provides the `actions/upload-artifact` action to upload files generated during a workflow.

Example:

```yaml
- name: Upload report artifact
  uses: actions/upload-artifact@v4
  with:
    name: day19-report
    path: output/report.txt
```

### Important Fields

- `uses`: Specifies the action used by the workflow.
- `name`: Sets the artifact name.
- `path`: Specifies the file or folder to upload.

## 4. Creating a Report File

A workflow can generate a file using shell commands.

Example:

```bash
mkdir -p output
echo "Workflow completed successfully." > output/report.txt
```

The `>` operator creates or overwrites a file. The `>>` operator appends content to an existing file.

## 5. Downloading an Artifact

1. Open the repository on GitHub.
2. Select the Actions tab.
3. Open the required workflow run.
4. Find the Artifacts section on the run summary page.
5. Click the artifact name to download it.
6. Open the downloaded ZIP file and inspect the report.

## 6. Artifact vs Repository File

| Artifact | Repository File |
|---|---|
| Generated or uploaded by a workflow | Stored in Git |
| Downloaded from a workflow run | Retrieved from the repository |
| Retained according to artifact retention settings | Kept according to Git history and repository settings |

## 7. Common Uses

- Saving automated test reports
- Sharing compiled application builds
- Keeping generated files available after a workflow
- Inspecting output without committing it to Git

## 8. Important Points

- The artifact name identifies the uploaded artifact.
- The path must point to an existing file or folder.
- The workflow needs permission to upload the artifact.
- Artifacts are not the same as permanent repository files.
- Artifacts are retained according to the configured retention period and repository limits.

## Summary

GitHub Actions artifacts allow workflow-generated files to be stored and downloaded after a run. In Day-19, a report was generated, uploaded as `day19-report`, downloaded, and verified successfully.
