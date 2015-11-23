#!/bin/bash

####################################################
# devstack vagrant shell provisioner script.
####################################################

echo "@@ - Provisioner start"

sudo apt-get update -y
sudo apt-get install git -y

###################################################
# Set up devstack repository.
###################################################
echo "@@ - Clone devstack repository"
# Now clone devstack repo.
git clone https://github.com/openstack-dev/devstack.git /home/vagrant/devstack

echo "@@ - Fix ownership and permissions on repo"
# fix permissions as the cloned repo is owned by root
chown -R vagrant:vagrant /home/vagrant

# Change to devstack directory
cd /home/vagrant/devstack

echo "@@ - Use https:// instead of git:// to pull openstack repos"
# Change to using https:// instead of git:// for git clone
sed -i 's|GIT_BASE:-git|GIT_BASE:-https|' stackrc


