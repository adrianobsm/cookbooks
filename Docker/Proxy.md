# Proxy

## View

```sh
docker info | grep Proxy
```

## Pull

### Linux

```sh
sudo mkdir /etc/systemd/system/docker.service.d
```

```sh
cat <<EOF | sudo tee -a /etc/systemd/system/docker.service.d/http-proxy.conf
[Service]
Environment="HTTP_PROXY=http://[username]:[password]@[ip]:[port]"
Environment="HTTPS_PROXY=http://[username]:[password]@[ip]:[port]"
Environment="NO_PROXY=localhost,127.0.0.1"
EOF
```

```sh
sudo systemctl daemon-reload
sudo systemctl show --property Environment docker
sudo systemctl restart docker
```

## Container

```sh
vim ~/.docker/config.json
```

```json
{
  "proxies": {
    "default": {
      "httpProxy": "http://[username]:[password]@[ip]:[port]",
      "httpsProxy": "http://[username]:[password]@[ip]:[port]",
      "noProxy": "localhost,127.0.0.1"
    }
  }
}
```

## Build

```sh
docker build --build-arg HTTP_PROXY=http://[username]:[password]@[ip]:[port] .
```

```yaml
version: '3.4'

services:
  example:
    build:
      context: ./path/to/service
      args:
        - HTTP_PROXY=${HTTP_PROXY}
        - HTTPS_PROXY=${HTTP_PROXY}
```
