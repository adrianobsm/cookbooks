# Kafka Manager

## Installation

### Docker

```sh
docker run -d \
 -p 9000:9000 \
 --name kafka-manager \
 --restart always \
 -e ZK_HOSTS=[ip]:2181 \
 hlebalbau/kafka-manager:1.3.3.18
```
