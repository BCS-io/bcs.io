![Bcs.io](../docs/images/terraform_banner.svg)

## Terraform

```
terraform
└───modules/hetzner
      │  module_api.tf
      │  variables.tf
      │
    project
      └───.terraform
          │     terraform generated files
          └───terraform.tfstate.d/development
          │     terraform generated per workspace files
          │  hetzner_api.tf
          │  terraform.tfvars
          │  variables.tf
```



Terraform configuration is specific for a single cloud provider. Only would be required if you needed to automate the creation of the Ubuntu server. Otherwise it can be ignored.

Associated scripts:

- bin/terraform - wrapper around terraform CLI
- bin/run - calls `bin/terraform` and updates the hosts file with ip address changes
