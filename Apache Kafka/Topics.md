# Kafka Topics

## Create Topic

```sh
kafka-topics --zookeeper [ip]:2181 \
 --create \
 --topic [name] \
 --partitions 1 \
 --replication-factor 1 \
 --if-not-exists
```

```sh
kafka-topics --zookeeper zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
 --create \
 --topic [name] \
 --partitions 6 \
 --replication-factor 1 \
 --if-not-exists \
 --config cleanup.policy=delete \
 --config delete.retention.ms=60000
```

## List Topics

```sh
kafka-topics --zookeeper [ip]:2181 --list
```

## Describe

```sh
kafka-topics --zookeeper [ip]:2181 --describe --topic [name]
```

## Delete Topic

```sh
kafka-topics --zookeeper [ip]:2181 --delete --topic [name]
```
