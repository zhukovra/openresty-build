Bash script for building Openresty from source.

Origin script for Nginx is MatthewVance/nginx-build.

### TESTING

Tested on Debian 10.

Test build script via docker:

```bash
# Test build
docker run --rm -i debian:10 bash < build.sh
```

Build docker image:
```bash
docker build --force-rm -t IMAGE_TAG .
```

Test build script and service via Vagrant:

```bash
vagrant up
vagrant ssh
sudo bash /vagrant/build.sh
sudo service nginx start
sudo nginx -V
```