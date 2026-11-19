
# Day 14 – Jenkins Build Artifacts & Archiving

## 1. What are Build Artifacts?

Build artifacts are files generated during a software build or pipeline execution.

Examples:
- `.txt` files
- `.jar` files
- `.war` files
- `.zip` files
- Application build packages
- Reports and test results

Jenkins can store these generated files so they can be accessed and downloaded later.

## 2. What is Artifact Archiving?

Artifact archiving means saving generated files from a Jenkins workspace as part of a completed build.

Jenkins provides the `archiveArtifacts` Pipeline step for this purpose.

## 3. What is the Jenkins Workspace?

The Jenkins workspace is the directory where Jenkins performs job-related operations.

It contains files used or generated during pipeline execution.

In this practical, Jenkins generated `build-info.txt` inside the workspace.

## 4. writeFile Pipeline Step

The `writeFile` step creates or writes content into a file.

Syntax:

    writeFile file: 'filename.txt', text: 'File content'

In Day 14, we used:

    writeFile file: 'build-info.txt',
              text: 'Cloud Engineering Journey - Jenkins Day 14'

This generated the build information file.

## 5. archiveArtifacts Pipeline Step

The `archiveArtifacts` step saves selected workspace files as archived artifacts.

Syntax:

    archiveArtifacts artifacts: 'filename.txt'

In our practical:

    archiveArtifacts artifacts: 'build-info.txt',
                     fingerprint: true

This archived the generated file and enabled fingerprinting.

## 6. What is Fingerprinting?

Fingerprinting helps Jenkins track files across builds and jobs.

It can help identify where an artifact was produced and where it was used.

In our pipeline, fingerprinting was enabled using:

    fingerprint: true

## 7. How to Download Archived Artifacts?

1. Open the Jenkins job.
2. Open the required build number.
3. Find the Artifacts section.
4. Click the archived file.
5. The file will be downloaded.

In Day 14, we successfully downloaded `build-info.txt` from Build #1.

## 8. Practical Execution Summary

Job Name: Day14-Pipeline-Build-Artifacts

Pipeline Stages:
1. Welcome
2. Generate Build Artifact
3. Archive Artifact
4. Build Complete

Generated File: `build-info.txt`

Build Number: #1

Build Status: SUCCESS

## 9. Important Jenkins Pipeline Steps

- `writeFile`: Creates or writes a file.
- `archiveArtifacts`: Archives generated files.
- `fingerprint`: Tracks artifact usage through fingerprints.

## 10. Key Learnings

- Understood Jenkins build artifacts.
- Learned how to generate files during pipeline execution.
- Learned how to archive files using Jenkins.
- Understood the purpose of artifact fingerprinting.
- Downloaded an archived file from a Jenkins build.

## Conclusion

Jenkins Build Artifacts help preserve important files generated during pipeline execution.

The `archiveArtifacts` step makes these files available from the Jenkins build page for later access.

Day 14 successfully completed.
