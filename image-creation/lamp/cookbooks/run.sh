#!/bin/bash
#
# Install everything and run it.
#
# This chef invocation gets run at deployment time.
#

# this works around a bug on ubuntu
mount -o remount,ro /sys/fs/selinux

# wait for interfaces to come online
sleep 5

# do the thing
cd /cookbooks
#count=1
#while [ $count -lt 3 ] ; do
    chef-client --local-mode -j chef.json
#    count=$((count + 1))
#    sleep 5
#done
service apache2 start
