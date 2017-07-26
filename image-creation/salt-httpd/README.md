# Salt-configured HTTP server (Apache)

This example uses Salt to set up and configure an HTTP server (Apache) that runs on port 80.

There are a number of files in the *srv* directory of the image:
* A configuration file named *minion*, which gets copied to */etc/salt*
* The *salt* directory, which contains the Salt configuration modules
* A script named *salt-run.sh*, which launches the Salt client

## Requirements

* Jisto Nodes must have access to the internet
* Jisto Nodes must be running CentOS 7 or Ubuntu 16.04
