# Installation

## Docker

```sh
docker run -d \
 -p 9092:9092 \
 --name kafka \
 --restart always \
 -e KAFKA_ADVERTISED_HOST_NAME=[ip] \
 -e KAFKA_ADVERTISED_PORT=2181 \
 -e KAFKA_LISTENERS=PLAINTEXT://:9092 \
 -e KAFKA_ZOOKEEPER_CONNECT=[ip]:2181 \
 wurstmeister/kafka:2.11-1.1.1
```

## OS X

```sh
brew install kafka
```

```sh
brew tap homebrew/services
brew services list
```

```sh
brew services start kafka
brew services restart kafka
brew services stop kafka
```
