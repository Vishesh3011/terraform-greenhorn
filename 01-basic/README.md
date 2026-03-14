## Basic Script
Here's an example of basic script usage of terraform.

## What it does?
- Verifies and connects to an aws account added to local machine
- Creates an EC2 instance

### How to run?
- `aws configure` (configures an aws account)
- `terraform init` (initialises the terraform work directory by downloading provider, modules and setting up backend)
- `terraform plan` (creates an execution plan describing what will terraform add, make any change, or destroy)
- `terraform apply` (applies the given infra by executing the changes; example: creating an ec2 instance)
- `terraform destroy` (destroys the created configurations)

