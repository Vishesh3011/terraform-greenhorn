## Modules
This directory has two folders. One for running the basic infrastructure (instances, load balancers, etc) and another running has root which will instantiate the defined modules for two seperate applications.

### A generic file structure that is followed by most of the firms/organizations:
```terraform/
│
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── rds/
│   └── alb/
│
└── environments/
    ├── dev/
    │   ├── main.tf
    │   ├── backend.tf
    │   └── terraform.tfvars
    │
    ├── staging/
    │   ├── main.tf
    │   ├── backend.tf
    │   └── terraform.tfvars
    │
    └── prod/
        ├── main.tf
        ├── backend.tf
        └── terraform.tfvars```