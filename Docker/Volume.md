# Volume

## Create

```sh
docker volume create [volume]
```

## Inspect

```sh
docker volume inspect [volume]
```

## List Volumes

```sh
docker volume ls
```

```sh
docker volume ls -qf dangling=true
```

## Remove

```sh
docker volume rm [volume]
```

```sh
docker volume rm $(docker volume ls -qf dangling=true)
```

## Create Backup Point

```sh
docker run -it --volume $(pwd):/backup [image] /bin/bash
```

## Remove All Volumes

```sh
docker volume prune
```

## Show Data

### Linux

```sh
cd /var/lib/docker/volumes
```

### OS X

```sh
screen ~/Library/Containers/com.docker.docker/Data/vms/0/tty
```

```sh
cd /var/lib/docker/volumes
```

```sh
screen -ls
screen -X -S [session] kill
```
