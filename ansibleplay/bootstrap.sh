#!/bin/bash
############################################
# Vagrant bootstrap file.
############################################
echo "Starting Vagrant VM (Orchestrator) Bootstrap"

echo "Generate rsa key and copy to shared folder."
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cp ~/.ssh/id_rsa* /vagrant/.

echo "Done!"

