#!/bin/bash
############################################
# Vagrant bootstrap file.
############################################
echo "Starting Vagrant VM (Orchestrator) Bootstrap"

VIRTUALENV="/home/vagrant/ansible_env"

# Install dependencies, including virtualenv.
sudo yum install -y git \
    gcc \
    wget \
    libffi libffi-devel openssl-devel \
    python-virtualenv

# Install sshpass
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-6.noarch.rpm
sudo rpm -ivh epel-release-7-6.noarch.rpm
sudo yum install -y sshpass

virtualenv ${VIRTUALENV}
source ${VIRTUALENV}/bin/activate
pip install ansible==1.9.4
 
echo "Done!"

