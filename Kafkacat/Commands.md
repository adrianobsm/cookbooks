# Commands

## Metadata List

```sh
kafkacat -b [hostname]:9092 -L
```

```sh
kafkacat -b [hostname]:9092 -t [topic] -L
```

## Produce

```sh
kafkacat -P -b [hostname]:9092 -t [topic]
```

## Consume

```sh
kafkacat -C -b [hostname]:9092 -t [topic]
```

## Consume Group

```sh
kafkacat -b [hostname]:9092 -G [group] [topic] [topic]
```

## Query Mode

```sh
kafkacat -Q -b [hostname]:9092 -t [topic]:[partition]:[timestamp]
```
