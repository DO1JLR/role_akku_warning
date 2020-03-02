[![ansible-galaxy: do1jlr.akku_warning](https://raw.githubusercontent.com/chaos-bodensee/role_akku_warning/master/.github/galaxy.svg?sanitize=true)](https://galaxy.ansible.com/do1jlr/akku_warning)
[![Ansible Lint check](https://github.com/chaos-bodensee/role_akku_warning/workflows/Ansible%20Lint%20check/badge.svg)](https://github.com/chaos-bodensee/role_akku_warning/actions?query=workflow%3A%22Ansible+Lint+check%22)
[![Build Status](https://travis-ci.org/chaos-bodensee/role_akku_warning.svg?branch=master)](https://travis-ci.org/chaos-bodensee/role_akku_warning)
[![Ansible check debian:stable](https://github.com/chaos-bodensee/role_akku_warning/workflows/Ansible%20check%20debian:stable/badge.svg)](https://github.com/chaos-bodensee/role_akku_warning/actions?query=workflow%3A%22Ansible+check+debian%3Astable%22)
[![Ansible check debian:sid](https://github.com/chaos-bodensee/role_akku_warning/workflows/Ansible%20check%20debian:sid/badge.svg)](https://github.com/chaos-bodensee/role_akku_warning/actions?query=workflow%3A%22Ansible+check+debian%3Asid%22)
[![Ansible check debian:buster](https://github.com/chaos-bodensee/role_akku_warning/workflows/Ansible%20check%20debian:buster/badge.svg)](https://github.com/chaos-bodensee/role_akku_warning/actions?query=workflow%3A%22Ansible+check+debian%3Abuster%22)
[![Ansible check debian:jessie](https://github.com/chaos-bodensee/role_akku_warning/workflows/Ansible%20check%20debian:jessie/badge.svg)](https://github.com/chaos-bodensee/role_akku_warning/actions?query=workflow%3A%22Ansible+check+debian%3Ajessie%22)
[![Ansible check debian:stretch](https://github.com/chaos-bodensee/role_akku_warning/workflows/Ansible%20check%20debian:stretch/badge.svg)](https://github.com/chaos-bodensee/role_akku_warning/actions?query=workflow%3A%22Ansible+check+debian%3Astretch%22)
[![Ansible check ubuntu:latest](https://github.com/chaos-bodensee/role_akku_warning/workflows/Ansible%20check%20ubuntu:latest/badge.svg)](https://github.com/chaos-bodensee/role_akku_warning/actions?query=workflow%3A%22Ansible+check+ubuntu%3Alatest%22)
[![MIT License](https://raw.githubusercontent.com/chaos-bodensee/role_akku_warning/master/.github/license.svg?sanitize=true)](https://github.com/chaos-bodensee/role_akku_warning/blob/master/LICENSE)

 ansible role: akku warning
==========================

This ansible warning will install an bash Script, that will be executet every 3 minutes.

If your batterie is under 25 percent, it will start warning you.

This role is tested with the [i3 - improved tiling wm](https://i3wm.org/), but probably will work on all window magers!

 Variables:
-----------
```yaml
# Your username you mostly use on your device
akku_user: "{{ ansible_user_id }}"

# should we install and enable cronie?
install_and_enable_cronie: true

# play a sound at critical battery level
multimedia_akku_warning: true

# set this to false to disable package installation?
manage_packages_akku_warning: true

# version check for this playbook
submodules_versioncheck: true

```
*For a complete view of all variables pleas have a look into the default folder.*

 Installation and Usage
------------
### install with galaxy:
```bash
ansible-galaxy install do1jlr.akku_warning
```

### example playbook with galaxy
```yaml
---
- hosts:
  roles:
    - do1jlr.akku_warning
```

### installation via git
```bash
# download this role into your roles directory
git clone https://github.com/chaos-bodensee/role_akku_warning.git
```

### example playbook
```yaml
---
- name: install akku_warning
  hosts: localhost
  tags:
   - akku_warning
  roles:
    - role_akku_warning
```

 Missing something?
----------------
Please feel free to open a [github](https://github.com/chaos-bodensee/role_akku_warning.git) Issue or Pull-Request. Thanks <3

 Testing
---------
This role is tested via github [actions](https://github.com/chaos-bodensee/role_akku_warning/actions).
