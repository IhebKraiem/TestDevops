#!/bin/bash

# Install Ansible
apt install ansible

# Build the Docker container
docker build -t tomcat-deploy .

# Run the container
docker run --privileged=true -it -v $PWD/deploy:/data tomcat-deploy