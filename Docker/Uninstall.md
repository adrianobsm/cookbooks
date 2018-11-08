# Uninstall

## openSUSE

```sh
sudo zypper rm docker
```

```sh
sudo rm -rf /var/lib/docker
```

## CentOS

```sh
sudo yum remove -y docker-ce
```

```sh
sudo rm -rf /etc/docker
sudo rm -rf /var/lib/docker
sudo rm -rf /srv/docker
sudo rm -rf /etc/sysconfig/docker
```

```sh
sudo rm -rf /run/docker
```

### Common Packages

```sh
sudo yum remove -y docker \
 docker-client \
 docker-client-latest \
 docker-common \
 docker-latest \
 docker-latest-logrotate \
 docker-logrotate \
 docker-selinux \
 docker-engine-selinux \
 docker-engine
```

# Group

```sh
sudo groupdel docker
```
