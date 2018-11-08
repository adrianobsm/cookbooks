# Swarm

## Init

```sh
docker swarm init --advertise-addr 192.168.99.100
```

## Join

```sh
docker swarm join --token <token> 192.168.99.100:2377
```

## Node

### List

```sh
docker node ls
```

## Remove

```sh
docker node rm [id]
```

## Leave

```sh
docker swarm leave
```
