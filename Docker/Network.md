# Network

## Show Docker IP Address

```sh
ip addr show dev docker0 | awk -F'[ /]*' '/inet /{print $3}'
```

## BIP

### Daemon File

#### OS X

```sh
vim ~/.docker/daemon.json
```

#### Linux

```sh
sudo vim /etc/docker/daemon.json
```

### Setting

```sh
{
  "bip": "192.168.1.5/24"
}
```
