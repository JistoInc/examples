# Network performance measurement tool iperf3

How to use this image:
* On the Jisto Server, find the fully qualified hostname by issuing this command: *hostname -f* 
* On the Jisto Server, install the iperf server using the following command:
```
For CentOS: sudo yum -y install https://iperf.fr/download/fedora/iperf3-3.1.3-1.fc24.x86_64.rpm
For Ubuntu: sudo apt-get -y install iperf3
```
* run the iperf server in a terminal for the duration of this test.
```
iperf3 -s
```
* make a copy of the iperf3-client.json file here:
https://github.com/JistoInc/examples/raw/master/job-creation/iperf3-client.json
* edit the copy of that file and replace INSERT_SERVER_IP_HERE with the fully qualified hostname from step 1 above.
* load the iperf3-client image into the Jisto Web UI
https://github.com/JistoInc/examples/raw/master/image-creation/built/iperf3-client.tar.gz
* run the iperf3-client image with the above Job File
