#!/bin/bash

sudo yum install -y \
     wget unzip

mkdir /home/vagrant/tf
wget \
    https://releases.hashicorp.com/terraform/0.6.16/terraform_0.6.16_linux_amd64.zip \
    --output-document=/home/vagrant/tf/terraform_0.6.16_linux_amd64.zip
unzip /home/vagrant/tf/terraform_0.6.16_linux_amd64.zip

export PATH=$PATH:/home/vagrant/tf
terraform

