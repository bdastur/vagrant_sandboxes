#!/usr/bin/env sh

ansible_repo="http://github.com/ansible/ansible.git"
ansible_branch="stable-1.9"
ansible_localdir="/home/vagrant/ansible_stable19"
curdir=$(pwd)


# Install Ansible (git clone)
git clone ${ansible_repo} -b ${ansible_branch} ${ansible_localdir}

# Install Ansible modules
cd ${ansible_localdir}
git submodule update --init --recursive
cd ${curdir}

source ${ansible_localdir}/hacking/env-setup
export ANSIBLE_HOST_KEY_CHECKING=False

pip install jinja2
pip install pyYaml
pip install paramiko
pip install httplib2
pip install six

