#!/bin/bash
#
# This is run by the jisto/*-ansible containers at container start time.  

# Modify your initial Ansible initial configuration here to be appropriate 
# for your environment.
#
cd /ansible
ansible-playbook webserver.yml 
