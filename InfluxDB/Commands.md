# Commands

## Connect

```sh
influx -host [host] -port 8086
```

```sh
SHOW DATABASES
```

```sh
use [database]
```

```sh
SHOW MEASUREMENTS
```

## Create

```sh
CREATE DATABASE [name]
```

## Retention

```sh
CREATE RETENTION POLICY <rp-name> ON <db-name> DURATION <duration> REPLICATION <n> [DEFAULT]
```

```sh
ALTER RETENTION POLICY <rp-name> ON <db-name> (DURATION <duration> | REPLICATION <n> | DEFAULT)+
```

```sh
DROP RETENTION POLICY <rp-name> ON <db-name>
```

## Select

```sh
SELECT * FROM [measurement]
```

## Drop

```sh
DROP DATABASE [name]
```
