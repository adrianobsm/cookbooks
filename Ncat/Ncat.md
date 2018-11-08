# Ncat

## Installation

### CentOS

```sh
sudo yum install -y nc
```

## Test Port

```sh
ncat -lp [port]
```

```sh
telnet [host] [port]
```

```sh
nc -v [host] [port]
```

## View Port

```sh
netstat -pan | grep [port]
```
