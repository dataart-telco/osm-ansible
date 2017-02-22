# osm-ansible
Ansible playbooks for OSM

There are a few options:

1. `osm-2-hosts.yml` - deploy full osm (so and ui, ro and vca) to 2 hosts
2. `osm-2-hosts-no-vca.yml` - deploy osm w/o juju (so and ui, ro) to 2 hosts

All scenarios use docker containers for RO, RO-DB, SO and UI.
VCA(juju) will be deployd to the host


### How to use

#### Setup dependencies

`ansible-galaxy install -r requirements.yml`

#### Configure inventory 

You should create custom inventory and define settings(image name, key, flavor and etc) for each groups:

1. osm-vnfm
2. osm-so

example: *group_vars/osm-vnfm*

```
ubuntu_image: ubuntu_16_04
key_name: remote-default
flavor: m1.medium
network: int-net
```

#### Deployment

`ansible-playbook -i inventories/<inventory_name> osm-2-hosts.yml`

in case you need use specific MTU please define it in `group_vars`

if ansible is not installed on you PC you can use docker image with it - [datelco/ansible](https://hub.docker.com/r/datelco/ansible/)
