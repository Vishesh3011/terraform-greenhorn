## Variables
Terraform allows us to define variables that can be used to store values for our configurations. This makes our code more understandable and flexible for changes. 

Syntax for variables:
```
variable "var_name" {
  type = string
}
```

Terraform supports common variablesl like string, number, bool, list, set, maps, object, and tuple. 

Variables must be stored in `variables.tfvars` file which gets applied during the command `terraform apply`. If in a different file, we can use the command:<br>
`terraform apply -var-file=another-variable-file.tfvars`

Some variables may require special a more secure mechanism to pass which can be done by passing it through command line or prompt.

## Output
We might prefer to output some variables that are not known ahead of time. For example, instance's ip address. Thus, this are printed either at the end of `terraform apply` or use `terraform output` to see those variables. 

They can be defined under a different file like `outputs.tf`.
