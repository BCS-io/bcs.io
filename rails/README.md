
![Bash](../docs/images/rails_banner.svg)

# BCS.io

Rails 6.0 monolith for BCS.io

* Ruby version: 2.6

* System dependencies: 
  - Ubuntu 18.04
  - cron
  - sshd_config
  - ufw
  - unattended-upgrades
  - dokku 

* Configuration
  - from repo root `bin/ansible-playbook`
  - credentials should be set following the pattern in test env
     - `rails credentials:edit --environment test`
  - credentials are present only for default, test and production
  - master and production environments will have to be regenerated unless you possess credential keys
     - https://github.com/rails/rails/issues/32718

* How to run the test suite
  -  `rails test && rails test:system`
  -  minitest
  -  test suite automatically run on a git push by lefthook

* Services
  -  Gmail - for emails from people contacting the website

* Deployment instructions
  - from repo root: `bin/deploy`
