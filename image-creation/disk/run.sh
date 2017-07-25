#!/bin/sh
#
# Write to disk then sleep for a random period of time.
#

COUNT=1
while [ $COUNT -le 10 ] ; do
	NUM_SECS=$((RANDOM%30+5))
	dd if=/dev/zero of=/tmp/zz.$$ bs=512k count=512
    rm -f /tmp/zz.$$
	sleep $NUM_SECS_OFF
    COUNT=$((COUNT + 1))
done
