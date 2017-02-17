# osm-ansible
Ansible playbooks for OSM

There are a few options:

1. `osm-2-hosts.yml` - deploy full osm (so and ui, ro and vca) to 2 hosts
2. `osm-2-hosts-no-vca.yml` - deploy osm w/o juju (so and ui, ro) to 2 hosts

All scenarios use docker containers for RO, RO-DB, SO and UI.
VCA(juju) will be deployd to the host


### How to use

`ansible-playbook osm-2-hosts.yml`

in case you need use specific MTU please specify it as parameter

`ansible-playbook -e "server_net_mtu=1400" osm-2-hosts.yml`

if ansible is not installed on you PC you can use docker image with it - [datelco/ansible](https://hub.docker.com/r/datelco/ansible/)
