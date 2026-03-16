## Testing
Terraform supports various methods to test our terraform configurations:

### Terraform native validation:
```terraform validate```: Checks whether the configuration is correct syntactically.<br>

```terraform fmt```: Formats our terraform code. >br>

```terraform plan```: Tells what will the script do.


### Static Testing
Using tools like tflint, checkov, tfsec helps to detect misconfigurations, security scanning and security best practices.

### Testing using Go (Integration testing)
This testing method helps us to check whether the infrastructure behaves correctly using the ```Terratest``` tool.

Terratest is a Go based testing framework that:
- Deploys infrastructure
- Verifies the behaviour
- Destroys it later


