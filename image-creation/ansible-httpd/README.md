# Ansible-configured HTTP server (Apache)

This example uses Ansible to set up and configure an HTTP server (Apache) that runs on port 80.

There are two files in the *ansible* directory of the image:
* A basic Ansible playbook named *webserver.yml*
* A script named *ansible-run.sh*, which launches the Ansible client

## Requirements

* Jisto Nodes must have access to the internet
* Jisto Nodes must be running CentOS 7 or Ubuntu 16.04
