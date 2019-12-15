![Bcs.io](docs/images/bcsio_banner.svg)

## Website BCS.io

Monorepo for [BCS.io](1) website. Installation is to an Ubuntu server instance configured by Terraform with [Dokku](2) providing a PaaS instance which the Rails instance is run on.

### Ansible

Ansible script provisions the server with systems required to run Rails 6 app on Dokku. While final deployment is to Dokku it would work by deploying to Heroku.

### Bin

Bash scripts used to wrap common complicated commands.


### Design

Artwork masters for the website. Designs are in Affinity Designer format.

### Rails

Rails monolith for the BCS.io website.


### Terraform

Terraform configuration is specific for a single cloud provider. Only would be required if you needed to automate the creation of the Ubuntu server. Otherwise it can be ignored.

Associated scripts:

- bin/terraform - wrapper around terraform CLI
- bin/run - calls `bin/terraform` and updates the hosts file with ip address changes

[1]: https://bcs.io
[2]: https://github.com/dokku/dokku
