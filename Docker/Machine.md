# Machine

## Installation

### OS X

```sh
brew install docker-machine
```

## Informations

```sh
docker-machine create -d [name] --help
```

```sh
docker-machine create -d virtualbox \
 --virtualbox-hostonly-cidr "192.168.99.1/24" \
 --virtualbox-memory 4096 \
 develop
```

| Driver |
| --- |
| virtualbox |
| digitalocean |

## Create

### VirtualBox

```sh
docker-machine create -d virtualbox develop
```

```sh
eval $(docker-machine env develop)
docker info
```

### Digital Ocean

```sh
docker-machine create -d digitalocean \
 --digitalocean-access-token <access_token> \
 --digitalocean-private-networking \
 --digitalocean-region "sfo2" \
 --digitalocean-size "2gb" \
 staging
```

```sh
eval $(docker-machine env staging)
docker info
```

## SSH

```sh
docker-machine ssh [name]
```

## Get IP

```sh
docker-machine ip [name]
```

## List

```sh
docker-machine ls
```

## Remove

```sh
docker-machine rm [name]
```
