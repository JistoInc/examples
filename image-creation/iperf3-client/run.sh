#!/bin/bash
#
# This runs on the server at task start time.
#
# This runs iperf3 with the envrionment variables:
#
#    SERVER: the server running iperf3 (required)
#
#    PORT (default of 5201)
#    TIME (default of 30s)
#    BANDWIDTH (default of 0 - for unlimited)
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
