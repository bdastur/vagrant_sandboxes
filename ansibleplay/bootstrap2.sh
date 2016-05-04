#!/bin/bash
############################################
# Vagrant bootstrap file.
############################################
echo "Starting vagrant Bootstrap"

sudo rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm
sudo rpm -ivh https://repos.fedorapeople.org/repos/openstack/openstack-kilo/rdo-release-kilo-1.noarch.rpm
sudo yum install -y openstack-nova openstack-nova-api openstack-nova-common


echo "Done!"

