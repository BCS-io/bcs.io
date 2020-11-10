
![Bash](../docs/images/ansible_banner.svg)


Ansible configures the basic Ubuntu configuration through the base role and Dokku which uses [dokku/ansible-dokku](1). I have not found any tutorials on using ansible-dokku so this may be a useful starting point for anyone using ansible-dokku and especially ansible-dokku with Rails.

- Base role: timezones, cron, firewall and unattended upgrades.
- Dokku roles: Dokku, application, Rails, SSL

The code is similar to [Letting's](2) except Letting had additional configuration under `dokku/tasks`.

```
ansible
│  .gitignore
│  requirements.yml
│
└───web
    │  ansible.cfg
    │  bootstrap.yml
    │  hosts.ini
    │  site.yml
    │
    └───group_vars
    │     all.yml
    │     
    └───host_vars
    │     host specific variables
    │     
    └───roles
    │     │     
    │     └───base
    │     │    └───meta
    │     │    │     
    │     │    └───tasks
    │     │          firewall.yml
    │     │          main.yml 
    │     │          unattended-upgrades.yml 
    │     │          upgrade.yml 
    │     │     
    │     └───dokku
    │          └───meta
    │          │     
    │          └───tasks
    │                main.yml 
    │                rails.yml 
    │                ssl.yml 
    │ 
    └───vars
          secret.example.yml
          secret.yml
```

## Project specific variables

`Ansible/web/host_vars/`  
  - currently: domain related information  

`Ansible/web/vars`
  - currently: list of ip addresses that are permitted to access server.


## Installation
  - From script the root
    1. `bin/ansible-galaxy-requirements` - installs Ansible libraires required
    2. `bin/ansible-playbook` - provisions the server using this Ansible setup

## Example of running a task

Runs an ansible playbook tasks on production with tag ssl

`bin/ansible-playbook -p -t ssl`


[1]: https://github.com/dokku/ansible-dokku
[2]: https://github.com/BCS-io/letting/tree/master/ansible
