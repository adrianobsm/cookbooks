# Subnet

## Change Docker subnet

```sh
sudo service docker stop
```

```sh
iptables -t nat -F POSTROUTING
```

```sh
ip link set dev docker0 down
ip addr del 172.17.42.1/16 dev docker0
```

```sh
ip addr add 192.168.10.1/24 dev docker0
ip link set dev docker0 up
```

```sh
ip addr show docker0
```

```sh
sudo service docker start
```

```sh
iptables -t nat -L -n
```
