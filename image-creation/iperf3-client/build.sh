#!/bin/bash
#
# This gets run at image creation time - not at system boot time.  
#
# Download iperf3 and installs it.
#
set -e
set -x
apt-get update
curl -o /tmp/libiperf.deb https://iperf.fr/download/ubuntu/libiperf0_3.1.3-1_amd64.deb
curl -o /tmp/iperf.deb https://iperf.fr/download/ubuntu/iperf3_3.1.3-1_amd64.deb
dpkg -i /tmp/*.deb
rm -f /tmp/*.deb
apt-get clean
