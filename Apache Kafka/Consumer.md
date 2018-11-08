# Kafka Consumer

## Consumer Topic

```sh
kafka-console-consumer --bootstrap-server [ip]:9092 --topic [name] --from-beginning
```

## Consumer Groups

```sh
kafka-consumer-groups --bootstrap-server [ip]:9092 --list
```

```sh
kafka-consumer-groups --bootstrap-server [ip]:9092 --describe --group [name]
```
