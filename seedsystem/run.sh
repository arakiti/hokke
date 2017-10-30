#!/bin/bash
openstack=/usr/bin/openstack
source /root/keystonerc && /usr/bin/openstack stack create -t /etc/heat/templates/seedsystem/seed_tenant_create.yml tenant_stack
sleep 10s
source /etc/heat/templates/seedsystem/defense_rc && /usr/bin/openstack stack create -t /etc/heat/templates/seedsystem/seed_defense_deploy.yml defense_stack
sleep 10s
source /etc/heat/templates/seedsystem/attack_rc && /usr/bin/openstack stack create -t /etc/heat/templates/seedsystem/seed_attack_deploy.yml attack_stack
