# Salt HTTP server  
  
This example uses Salt to setup and configure a HTTP server 
that runs on port 80.

There are several files in the srv directory:
* The minion configuration file that gets copied to /etc/salt
* The salt directory containing the salt configuration modules.
* A salt-run.sh script which launches the Salt client.

## Requirements

* Container must have access to the internet
* Jisto agent host must be running Centos 7 or Ubuntu 16.04
