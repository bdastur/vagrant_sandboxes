#!/bin/bash


# Install packer.
sudo apt-get update -y
sudo apt-get install unzip -y

sudo su
mkdir /root/packer
cd /root/packer
wget https://releases.hashicorp.com/packer/0.8.6/packer_0.8.6_linux_amd64.zip
unzip packer_0.8.6_linux_amd64.zip
cp /root/packer/packer /usr/bin/packer
chmod +x /usr/bin/packer

# Install docker.io
apt-get install docker.io -y


