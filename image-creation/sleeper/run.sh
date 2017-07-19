#!/bin/bash
#
# Sleep for ${SLEEP_TIME} or 60 seconds.
#
# This script is run when the task is started.
#
SLEEP_TIME=${SLEEP_TIME:-60}
sleep ${SLEEP_TIME}
