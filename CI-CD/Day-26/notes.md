# Day-26 Notes: GitHub Actions Dependency Caching

## 1. What Is Dependency Caching?

Dependency caching stores downloaded packages so that future workflow runs can reuse them instead of downloading everything again.

This can reduce package installation time in GitHub Actions.

## 2. Why Is Caching Useful?

- Reduces repeated package downloads.
- Can make workflows faster.
- Saves time when the same dependencies are needed in multiple runs.

## 3. Python Dependency File

The file `requirements.txt` lists the Python packages needed by a project.

For this practical, we used:

requests==2.32.3

This specifies the Requests package version to install.

## 4. GitHub Actions Cache Configuration

The workflow uses `actions/setup-python` with these settings:

- `python-version: "3.12"` selects Python 3.12.
- `cache: pip` enables pip caching.
- `cache-dependency-path` identifies the requirements file used to create the cache key.

## 5. Cache Hit and Cache Miss

**Cache hit:** A matching cache is found and can be reused.

**Cache miss:** A matching cache is not found, so the workflow may need to download packages again.

The cache key depends on the configured requirements file. Changes to dependencies can create a different cache key.

## 6. Practical Result

The Day-26 workflow completed successfully and verified the installed Requests version as `2.32.3`.

The captured log showed `pip cache is not found`, so a cache hit has not yet been confirmed.

## 7. Important Learning

A successful workflow does not automatically mean caching worked. Always check the cache logs to confirm whether a cache was restored or saved.

## 8. Workflow Source

https://github.com/arunvishwakarma1307-wq/cloud-engineering-journey/blob/main/.github/workflows/day26-dependency-cache.yml