# osm-ansible
Ansible playbooks for OSM

There are a few options:

1. `osm-2-hosts.yml` - deploy full osm (so and ui, ro and vca) to 2 hosts
2. `osm-2-hosts-no-vca.yml` - deploy osm w/o juju (so and ui, ro) to 2 hosts

All scenarios use docker containers for RO, RO-DB, SO and UI.
VCA(juju) will be deployd to the host
