#!/usr/bin/env bash

sudo chef-client --local-mode httpd.rb

# This runs forever and uses no resources.
tail -f /dev/null
