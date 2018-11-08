# Dnsmasq

```sh
sudo apt-get update

sudo apt-get install -y -q --no-install-recommends \
ca-certificates \
wget \
dnsmasq \
supervisor

sudo apt-get clean
sudo rm -r /var/lib/apt/lists/*
```

```sh
export DOCKER_GEN_VERSION=0.4.0

wget https://github.com/jwilder/docker-gen/releases/download/$DOCKER_GEN_VERSION/docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz

sudo tar -C /usr/local/bin -xvzf docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz

rm docker-gen-linux-amd64-$DOCKER_GEN_VERSION.tar.gz
```

```sh
touch dnsmasq.tmpl

user=root
domain-needed
bogus-priv
resolv-file=/etc/resolv.conf
{{ range $key, $container := . }}
	{{ $addrLen := len $container.Addresses }}
	{{ if ge $addrLen 1 }}
		{{ with $address := index $container.Addresses 0 }}
			host-record={{$container.Name}},{{ $address.IP }}
		{{ end }}
	{{ end }}
{{ end }}
```

```sh
touch supervisord.conf

[program:dnsmasq]
command=dnsmasq -d

[program:docker-gen]
command=docker-gen -watch -notify "supervisorctl -c /etc/supervisor/supervisord.conf restart dnsmasq" /app/dnsmasq.tmpl /etc/dnsmasq.conf
```
