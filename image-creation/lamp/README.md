# Jisto chef-template
Base template for creating jisto images using chef.

In this example we will be using the image name "myapache"

1. Clone this image into a new image directory
```
   git clone https://github.com/JistoInc/chef-template myapache
```
2. Modify myapache/config.json
   1. ensure targetimage is set to the name of the jisto image you are creaing
   2. ensure targetimagetag is set to some version number of your choosing
   3. ensure the baseimage is apropriate for your application, we provide:
       * jisto/ubuntu1404-chef
       * jisto/centos7-chef
       * jisto/centos6-chef
```json
{
  "targetimage": "myapache",
  "targetimagetag": "0.1",
  "installsource": "cookbooks",
  "installdestination": "/cookbooks/",
  "workingdir": "/cookbooks",
  "buildfile": "build.sh",
  "runfile": "run.sh",
  "baseimage":"jisto/ubuntu1404-chef",
  "baseimagetag":"latest"
}
```
3. Configure chef cookbooks for your app.
   1. Go into the cookbooks directory of the image template you just made
```
      cd myapache/cookbooks
```
   2. Make a .chef directory to enable knife configuration.
```
      mkdir .chef
```
   3. Configure knife to download cookbooks to the current directory
```
      echo "cookbook_path [ '$(pwd)' ]" > .chef/knife.rb
```
   4. Use knife to download cookbooks that you want. In this example, apache2
      Because this is chef zero we also download all dependencies.
```
         knife supermarket download apache2
         knife supermarket download apt   
         knife supermarket download pacman   
         knife supermarket download iptables   
         knife supermarket download logrotate
```
   5. Untar each of the downloaded files, and clean up unneeded tar files.
```
         tar xf apache2*.gz ; rm apache2*.gz   
         tar xf apt*.gz ; rm apt*.gz   
         tar xf pacman*.gz ; rm pacman*.gz   
         tar xf iptables*.gz ; rm iptables*.gz   
         tar xf logrotate*.gz ; rm logrotate*.gz
```
   6. Edit web.json to specify which recipies will be used. 
      In this example, apache2
```json
echo '{ "run_list": [ "recipe[apt]", "recipe[apache2]" ] }' > web.json
```
   7. Create a tarfile to upload to the Jisto Server
      change to the toplevel image directory and create the tarfile
```
      cd ..
      tar czf ../myapache.tar.gz *
```
   8. Upload the image file to the jisto server on the images page
