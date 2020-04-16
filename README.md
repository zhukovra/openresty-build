Bash script for building Openresty from source.

Origin script for Nginx is MatthewVance/nginx-build.

### Install

Create directory, cd in it. Copy build.sh and "sudo bash build.sh"

### TESTING

Tested on Debian 10.

Test build script via docker:

```bash
# Test build
docker run --rm -i debian:10 bash < build.sh
```

Test build script and service via Vagrant:

```bash
vagrant up
vagrant ssh
sudo bash /vagrant/build.sh
sudo service nginx start
sudo nginx -V
```