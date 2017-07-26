# Chef-configured full LAMP stack (Apache, MySQL, PHP)

This example uses Chef to set up and configure a full LAMP stack, including an HTTP server (Apache), MySQL, and PHP, that runs on port 80.

There are a number files in the cookbooks directory:
* A directory for each Chef cookbook.
* run.sh script which launches the Chef client.

## Requirements

* Container must have access to the internet.
* Jisto agent host must be running Centos 7 or Ubuntu 16.04.
