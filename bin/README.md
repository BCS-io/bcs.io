![Bash](../docs/images/bash_banner.svg)

## bin

### ansible-galazy-requirements

- installing Ansible libraries required by 

### ansible-playbook

- provisions a server for Dokku instance with Rails

### bundler

 - bundles the rails project without needing to change directory

### clean

- removes ssh keys associated with the server's name.

### dbg_curl

- returns the default web page on the server

### dbg_dns

- returns dig information on the domain

### dbg_nginx_log

-  returns the `nginx` logs on the managed servers

### dbg_nmap

- runs network port scanner `nmap` against the managed servers

### dbug_ufw

- runs `ufw status` against the managed servers.

### deploy

- pushes code to server Heroku or Dokku
- Note: it only deploys the Rails directory from the monorepo

### hetzner-api

- runs complicated api requests against hetzner api

### redo

- runs scripts over to configure, provision, deploy Rails in one command

### run

- wrapper of the terraform script
- configures servers using terraform

## terraform

- wrapper of terraform CLI
