#!/bin/bash
#
# This is a magic file run by the jisto/*-ansible container
# at container start time.  Modify your initial ansible initial 
# here to apropriate for your environment
#
cd /ansible
ansible-playbook webserver.yml 
