# Chef-configured full LAMP stack (Apache, MySQL, PHP)

This example uses Chef to set up and configure a full LAMP stack, including an HTTP server (Apache), MySQL, and PHP, that runs on port 80.

There are a number of files in the *cookbooks* directory of the image:
* A directory for each Chef cookbook
* A script named *run.sh*, which launches the Chef client

## Requirements

* Jisto Nodes must have access to the internet
* Jisto Nodes must be running CentOS 7 or Ubuntu 16.04
