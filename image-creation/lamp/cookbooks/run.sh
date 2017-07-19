#!/bin/bash
#
# Install everything and run it.
#
# This chef invocation gets run at deployment time.
#

# this works around a bug on ubuntu
mount -o remount,ro /sys/fs/selinux

mkdir /run/lock

# wait for interfaces to come online
sleep 5

# do the thing
cd /cookbooks
chef-client --local-mode -j chef.json
