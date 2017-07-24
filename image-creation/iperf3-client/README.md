# How to use iPerf container.
* on the jisto server, find the fully qualified hostname by issuing the command: hostname -f 
* on the jisto server, install the iperf server 
```
centos: sudo yum -y install https://iperf.fr/download/fedora/iperf3-3.1.3-1.fc24.x86_64.rpm
ubuntu: sudo apt-get -y install iperf3
```
* run the iperf server in a terminal for the duration of this test.
```
iperf3 -s
```
* make a copy of the iperf3-client.json file here:
https://github.com/JistoInc/examples/raw/master/job-creation/iperf3-client.json
* edit the copy of that file and replace INSERT_SERVER_IP_HERE with the fully qualified hostname from step 1 above.
* load the iperf3-client image into the Jisto Web UI
* run the iperf3-client image with the above Job File
