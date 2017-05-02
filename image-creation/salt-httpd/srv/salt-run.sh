#!/bin/bash
#
# This is a magic file run by the jisto/*-salt container
# at container start time.  Modify your salt call here to 
# be apropriate for your environment
#
salt-call --local state.apply -l debug
