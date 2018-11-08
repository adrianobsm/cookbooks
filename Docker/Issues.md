# Issues

# Errors

## WARNING: No swap limit support

```sh
docker info
sudo vim /etc/default/grub

GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"

sudo update-grub
sudo shutdown -r now
```

## Permission denied

```
Post http:///var/run/docker.sock/images/create?fromImage=nginx&tag=: dial unix /var/run/docker.sock: permission denied
```

Add the docker group if it doesn't already exist:

```sh
sudo groupadd docker
```

Add the connected user "${USER}" to the docker group. You may have to logout and log back in again for this to take effect:

```sh
sudo gpasswd -a ${USER} docker
```

Restart the Docker daemon:

```sh
sudo service docker restart
```

Reload user session:

```sh
su - $USER
```

## Create

```
Post http:///var/run/docker.sock/v1.19/containers/create: dial unix /var/run/docker.sock: no such file or directory. Are you trying to connect to a TLS-enabled daemon without TLS?
```

```sh
$(boot2docker shellinit)
```

## JSON

```
Get http:///var/run/docker.sock/v1.19/images/json: dial unix /var/run/docker.sock: no such file or directory. Are you trying to connect to a TLS-enabled daemon without TLS?
```

```sh
$(boot2docker up)
```

## Dial unix /var/run/docker.sock

```
Get http:///var/run/docker.sock/v1.20/containers/json: dial unix /var/run/docker.sock: no such file or directory.
* Are you trying to connect to a TLS-enabled daemon without TLS?
* Is your docker daemon up and running?
```

```sh
eval "$(docker-machine env default)"
```

## Group Not Exist

```
usermod: group 'docker' does not exist
```

```sh
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
newgrp docker
```

## Failed to get D-Bus connection

```
Failed to get D-Bus connection: Operation not permitted
```

```sh
docker run --cap-add SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d --name [name] [image] [command]
```

| Name | Image | Command |
| --- | --- | --- |
| centos | centos:7.3.1611 | `/usr/sbin/init` |
| opensuse | opensuse:42.3 | `` |

```sh
docker exec -it [name] /bin/bash
```
