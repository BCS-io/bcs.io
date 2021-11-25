![Bcs.io](docs/images/bcsio_banner.svg)

# Website BCS.io

Monorepo for [BCS.io](1) website. Installation is to an Ubuntu server instance configured by Terraform with [Dokku](2) providing a PaaS instance which the Rails instance is run on.

## Commits
The repository is for reference and the code is heavily rebased which will make the commits impossibly clean but a useful reference when developing a new website.

The following commit message symbols are used:  
\+ adding  
\^ changing  
\- removing  

## Project Structure

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

---
## Getting Started

### Create a server
1. Create new server by environment
2. Provision with Ansible playbook
3. Deploy code
4. Provision with Ansible playbook (Required for SSL)

Which gives:
```
bin/clean -p
bin/run -p -a
# Update DNS if ip addresses have changed
bin/ansible-playbook -p
bin/deploy -p
bin/ansible-playbook -p -t ssl
```

### Removing a server
  1. Destroy server by environment (development/staging/production)
  2. Remove ssh keys associated with the server name or ip address
  3. Clear DNS cache (Mac OS code)

Which gives:
```
bin/terraform -d production
bin/clean -p
sudo killall -HUP mDNSResponder
```

[1]: https://bcs.io
[2]: https://github.com/dokku/dokku
