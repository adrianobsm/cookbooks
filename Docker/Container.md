# Container

## Run Container

```sh
docker run -it [image] /bin/bash
```

## Run With Detach

```sh
docker run -d -p [port] [image_name]
```

## Exec Existing Container

```sh
docker exec -it [container] /bin/bash
```

## Kill Container

```sh
docker kill [container]
```

### Kill All Running Containers

```sh
docker kill $(docker ps -q)
```

## Remove Container

```sh
docker rm [container]
```

### Remove Old Containers

```sh
docker rm $(docker ps -a -q)
```
