# This image builds a container using a chef http cookbook example

If you want to build an HTTP server image in the Jisto environment, 
you can assemble a collection of files with little to no docker or container
knowledge.

## Files
* config.json         Jisto Metadata about the system
* build.sh            commands that run at image build time.
* cookbooks/http.rb   an example cookbook
* run.sh              the container entrypoint
                      calls chef to configure the system and and sits forever.


## Jisto Metadata (config.json)

```javascript
{
    "image": "jisto-chef-centos7",
	"name": "chef_httpd_basic",
	"installsource": "cookbooks",
	"installdestination": "/cookbooks/",
	"workingdir": "/cookbooks",
	"buildfile": "build.sh",
	"runfile": "run.sh"
}
```

## Description of individual data fields.
* "__image__":               The base docker image to create this image from.
  -  Jisto provides you with many base images, centos6, 7, and ubuntu
  - We support base (no mgmt), chef, ansible, and salt for configuration managment.
  - Image names are in the format jisto-$mgmt-$os    
* "__name__":                The name of image as presented by the Jisto System
* "__installsource__":       Where to get files releative to this directory
* "__installdestination__":  Where to place above files.
                             Relative to the root directory inside the running container.
* "__workingdir__":          Working directory inside the running container.
* "__runfile__"              The container entrypoint file.  This is what runs your application.
* "__buildfile__"            The container build file.  This builds your application.


## Using this image

You would use tar to create this image and upload it to the Jisto Server to
create the image.

```shell
$ git clone https://github.com/JistoInc/examples/tree/develop/image-creation/chef-httpd
$ cd chef-httpd
$ tar zcf ~/chef_httpd_basic.tar.gz *
```

You would upload ~/chef_httpd_basic.tar.gz to your Jisto server
