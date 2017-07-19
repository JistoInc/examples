#!/bin/bash
#
# This runs on the server at task start time.
#
# sleeping one second
#

#SERVER=${SERVER-${SERVER}}
if [ -z "$SERVER" ] ; then
    echo "You must set the envrionment variable SERVER"
    exit 1
fi
PORT=${PORT:-5201}
TIME=${TIME:-30}
BANDWIDTH=${BANDWIDTH:-0}

ARGS="-c ${SERVER} -p ${PORT} -b ${BANDWIDTH}"

/usr/bin/iperf3 ${ARGS}
