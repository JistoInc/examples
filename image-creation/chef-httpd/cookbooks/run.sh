#!/bin/bash
#
# Install everything and run it.
#
# This chef invocation gets run at deployment time.
#

# This must be executed from /cookbooks
# do not change this here or config.json
#
cd /cookbooks
chef-client --local-mode --runlist 'recipe[apache2]'
