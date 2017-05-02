#!/bin/bash
#
# This gets run at image creation time - not at system boot time.  
#
#

# copy minion configuration from /srv into place
mkdir -p /etc/salt
mv /srv/minion /etc/salt/minion
