#!/bin/bash
#
# This script runs when the task is started.
#
# Run stress for a random amount of time on a random number of cores.
#

STRESS=/jisto/stress
if [ -e /opt/jisto/bin/stress ] ; then
    STRESS=/opt/jisto/bin/stress
fi


COUNT=1
while [ $COUNT -le 10 ] ; do
	NUM_SECS_ON=$((RANDOM%10+15))
	NUM_SECS_OFF=$((RANDOM%10+5))
    NUM=$((RANDOM%3+1))
    AMOUNT=$(($(awk '/MemFree:/{print $2}' /proc/meminfo) / 4))
	echo "Iteration $COUNT - Consuming ${AMOUNT} * $NUM bytes of Memory $NUM_SECS_ON sec on, $NUM_SECS_OFF sec off"
	${STRESS} --vm ${NUM} --vm-bytes ${AMOUNT}k --vm-keep --timeout $NUM_SECS_ON
	sleep $NUM_SECS_OFF
    COUNT=$((COUNT + 1))
done
