# ZooKeeper

## Installation

### Docker

```sh
docker run -d \
 -p 2181:2181 \
 --name zookeeper \
 --restart always \
 zookeeper:3.4.13
```

### OS X

```sh
brew install zookeeper
```

```sh
brew tap homebrew/services
brew services list
```

```sh
brew services start zookeeper
brew services restart zookeeper
brew services stop zookeeper
```

## Commands

### Connect

```sh
zookeeper-shell [ip]:2181
```

### Run Command

```sh
zookeeper-shell [ip]:2181 <<< 'ls /brokers/ids'
```

### List

```sh
ls /
```

### Get

```sh
get /
```

### Delete

```sh
delete / # attention!
```

### Help

```sh
help
```
