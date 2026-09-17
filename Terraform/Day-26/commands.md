# Day 26 - Terraform Commands

## 1. Create main.tf

New-Item main.tf -ItemType File

Creates the Terraform configuration file.


## 2. Open main.tf

notepad main.tf

Opens the Terraform configuration file in Notepad.


## 3. Initialize Terraform

terraform init

Initializes the Terraform working directory and downloads the required provider.


## 4. Start Terraform Console

terraform console

Opens the interactive Terraform Console for testing expressions and inspecting values.


## 5. Test Basic Expression

5 + 10

Tests a basic Terraform expression.

Result:

15

Screenshot:
01-console-expression.png


## 6. Test upper() Function

upper("terraform")

Tests the Terraform string function.

Result:

"TERRAFORM"

Screenshot:
02-console-functions.png


## 7. Check Variable Value

var.name

Displays the current value of the Terraform variable.

Result:

"terraform"


## 8. Check Local Value

local.message

Displays the value of the Terraform local.

Result:

"Hello terraform"


## 9. Test List Indexing

["Linux", "Docker", "Kubernetes"][1]

Tests list indexing.

Result:

"Docker"


## 10. Test Map Value

{ environment = "prod", region = "us-east-1" }.environment

Tests accessing a value from a map/object.

Result:

"prod"


## 11. Test length() Function

length(["Docker", "Kubernetes", "Terraform"])

Tests the Terraform length function.

Result:

3

Screenshot:
02-console-functions.png


## 12. Test join() Function

join("-", ["cloud", "engineering", "journey"])

Tests the Terraform join function.

Result:

"cloud-engineering-journey"

Screenshot:
02-console-functions.png


## 13. Exit Terraform Console

exit

Exits the Terraform Console.


## 14. Validate Configuration

terraform validate

Checks whether the Terraform configuration is valid.

Screenshot:
06-dynamic-block-validation.png
“No screenshot was taken.”

Note:
This command was run during the practical to verify the configuration after adding the local_file resource.


## 15. Create Resource

terraform apply

Applies the Terraform configuration and creates the local_file resource.

Confirmation:
yes

The resource creates:

console-demo.txt


## 16. Start Terraform Console Again

terraform console

Opens Terraform Console for resource attribute inspection.


## 17. Inspect Resource Content

local_file.demo.content

Displays the content managed by the local_file resource.

Result:

"Hello terraform"

Screenshot:
03-console-resource-attribute.png


## 18. Inspect Resource Filename

local_file.demo.filename

Displays the filename/path managed by the local_file resource.

Result:

"./console-demo.txt"

Screenshot:
04-console-resource-filename.png


## 19. Exit Terraform Console

exit

Exits the Terraform Console.


## 20. Final Plan Verification

terraform plan

Checks the final Terraform configuration and confirms that there are no pending infrastructure changes.

Screenshot:
05-final-plan.png