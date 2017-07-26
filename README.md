# Jisto Example Image and Job Files

Below are example image and job files ready to be deployed using Jisto. The image links are ready-to-use tarballs, which have already been built. The corresponding source/documentation links for these images are also provided. Each image also has corresponding JSON job links, which are also ready to be used with their corresponding images using Jisto.

## Available images and jobs:

### CPU and memory exercisers:
* rcrd
  - Application: CPU exerciser: uses random number of CPU cores for random periods of time
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/rcrd.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/rcrd.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/rcrd
* memory
  - Application: Memory exerciser: uses random amount of memory for random periods of time
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/memory.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/memory.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/memory
### Configuration management systems (CMS) deploying HTTP server (Apache):
* ansible-httpd
  - Application: Ansible-configured HTTP server (Apache)
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/ansible-httpd.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/ansible-httpd.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/ansible-httpd
* chef-httpd
  - Application: Chef-configured HTTP server (Apache)
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/chef-httpd.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/chef-httpd.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/chef-httpd
* puppet-httpd
  - Application: Puppet-configured HTTP server (Apache)
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/puppet-httpd.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/puppet-httpd.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/puppet-httpd
* salt-httpd
  - Application: Salt-configured HTTP server (Apache)
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/salt-httpd.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/salt-httpd.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/salt-httpd
### Configuration management systems (CMS) deploying full LAMP stack (Apache, MySQL, PHP):
* chef-lamp
  - Application: Chef-configured full LAMP stack (Apache, MySQL, PHP)
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/chef-lamp.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/chef-lamp.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/chef-lamp
### Network performance measurement tools:
* iperf3-client
  - Application: Network performance measurement tool iperf3
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/iperf3-client.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/iperf3-client.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/iperf3-client
### Sleep (do nothing) application:
* sleeper
  - Application: Sleep (do nothing) for a specified number of seconds
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/sleeper.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/sleeper.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/sleeper
* sleep-one
  - Application: Sleep (do nothing) for one second
  - Image: https://github.com/JistoInc/examples/raw/master/image-creation/built/sleep-one.tar.gz
  - Job: https://github.com/JistoInc/examples/raw/master/job-creation/sleep-one.json
  - Source/Docs: https://github.com/JistoInc/examples/tree/master/image-creation/sleep-one
