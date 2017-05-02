#!/bin/bash
#
# This is a magic file run by the jisto/*-puppet container
# at container start time.  Modify your puppet initial commands here
# be apropriate for your environment
#
# Putting puppet into your path is recommended
export PATH=/opt/puppetlabs/bin:${PATH}
cd /puppet
puppet apply modules/default.pp
