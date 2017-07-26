# Puppet-configured HTTP server (Apache)

This example uses Puppet to set up and configure an HTTP server (Apache) that runs on port 80.

There are a number of files in the *puppet* directory of the image:
* A directory named *modules*, which contains the Puppet configuration modules
* A script named *puppet-run.sh*, which launches the Puppet client

## Requirements

* Jisto Nodes must have access to the internet
* Jisto Nodes must be running CentOS 7 or Ubuntu 16.04
