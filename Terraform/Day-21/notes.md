# Day 21 - Terraform Testing Notes

## Terraform Testing

Today we used Terraform's built-in testing feature.

We created a `.tftest.hcl` file to test our Terraform configuration.

---

## Project Structure

We created a `tests` folder:

```text
Day-21/
│
├── main.tf
│
└── tests/
    └── file_test.tftest.hcl
```

---

## Terraform Resource

In `main.tf`, we created a `local_file` resource:

```hcl
resource "local_file" "test_demo" {
  filename = "${path.module}/test-demo.txt"
  content  = "Terraform testing practical."
}
```

This creates:

```text
test-demo.txt
```

The expected content is:

```text
Terraform testing practical.
```

---

## Test File

We created:

```text
tests/file_test.tftest.hcl
```

The test contains:

```hcl
run "verify_file_content" {
  command = plan

  assert {
    condition     = local_file.test_demo.content == "Terraform testing practical."
    error_message = "The file content does not match the expected value."
  }
}
```

---

## `run` Block

The `run` block defines a test step.

We used:

```hcl
command = plan
```

This means the test uses Terraform's plan operation.

---

## `assert` Block

The `assert` block checks whether the expected condition is true.

We checked:

```text
Actual content
      =
Expected content
```

If the condition is true, the test passes.

If the condition is false, the test fails.

---

## Passing Test

First, we ran:

```powershell
terraform test
```

The test passed successfully.

```text
PASS
```

Screenshot:

```text
01-terraform-test-pass.png
```

---

## Failing Test

To understand test failure, we temporarily changed the condition to:

```hcl
condition = local_file.test_demo.content == "Wrong content"
```

The actual content was:

```text
Terraform testing practical.
```

The expected content was:

```text
Wrong content
```

Because the values did not match, the test failed.

Screenshot:

```text
02-terraform-test-fail.png
```

---

## Correcting the Test

We changed the condition back to:

```hcl
condition = local_file.test_demo.content == "Terraform testing practical."
```

Then we ran:

```powershell
terraform test
```

The test passed successfully again.

Screenshot:

```text
03-terraform-test-final-pass.png
```

---

## Today's Test Flow

```text
Correct Test
     ↓
terraform test
     ↓
PASS
     ↓
Change Condition
     ↓
terraform test
     ↓
FAIL
     ↓
Correct Condition
     ↓
terraform test
     ↓
PASS
```

---

## What I Learned

- Terraform testing
- `.tftest.hcl` test files
- `tests` folder
- `run` block
- `assert` block
- `condition`
- `error_message`
- Passing tests
- Failing tests
- `terraform test`