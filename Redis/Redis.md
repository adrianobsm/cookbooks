# Redis

## Installation

### Ubuntu

```sh
sudo apt-get update
sudo apt-get install -y build-essential tcl
```

### Linux

```sh
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
( cd redis-stable && make && sudo make install )
```

```sh
sudo mkdir /etc/redis
sudo cp /tmp/redis-stable/redis.conf /etc/redis
```

```sh
sudo vim /etc/redis/redis.conf

supervised systemd
dir /var/lib/redis
```

```sh
sudo vim /etc/systemd/system/redis.service

[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target
```

```sh
sudo adduser --system --group --no-create-home redis
sudo mkdir /var/lib/redis
sudo chown redis:redis /var/lib/redis
sudo chmod 770 /var/lib/redis
rm -rf /tmp/redis-stable*
```

```sh
sudo systemctl start redis
sudo systemctl status redis
sudo systemctl enable redis
```
