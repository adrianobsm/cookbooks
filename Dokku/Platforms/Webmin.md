# Webmin

```sh
git clone git@github.com:sameersbn/docker-bind.git webmin
cd webmin
```

```sh
vim Dockerfile
```

```Dockerfile
# Add after last RUN command
RUN sed -i "s/port=10000/port=80/" /etc/webmin/miniserv.conf \
 && sed -i "s/listen=10000/listen=80/" /etc/webmin/miniserv.conf \
 && sed -i "s/ssl=1/ssl=0/" /etc/webmin/miniserv.conf

# Change EXPOSE port 10000 to 80
EXPOSE 53/udp 80/tcp
```

```sh
git remote add dokku dokku@domain.com:webmin
git push dokku master
```

```sh
dokku config:set webmin ROOT_PASSWORD=secret
```

```sh
sudo dokku volume:create webmin /home/webmin/data:/data
dokku volume:link webmin webmin
```

```sh
sudo git clone https://github.com/stuartpb/dokku-bind-port.git /var/lib/dokku-alt/plugins/bind-port
```

```sh
dokku bind:create webmin 53/udp
```

### Configuration

#### IP Address

```txt
Servers > BIND DNS Server > Create master zone
```

```txt
Zone type: Reverse (Addresses to Names)
Domain name / Network: 172.17.42.1
Master server: ns.domain.com
Email address: admin@domain.com
```

#### Domain

```txt
Servers > BIND DNS Server > Create master zone
```

```txt
Zone type: Forward (Names to Addresses)
Domain name / Network: domain.com
Master server: ns.domain.com
Email address: admin@domain.com
```

Address

```txt
Name: ns
Address: 172.17.42.1
```

Name Alias

```txt
Name: www
Real Name: domain.com
```

Apply Configuration

## DNS

### Docker

```sh
sudo vim /etc/default/docker
```

```ini
DOCKER_OPTS="--dns 172.17.42.1 --dns 8.8.8.8 --dns 8.8.4.4"
```

```sh
sudo service docker restart
```

### OS

```sh
sudo vim /etc/resolvconf/resolv.conf.d/base
```

```ini
nameserver <ip_addr>
nameserver 8.8.8.8
nameserver 8.8.4.4
```

```sh
sudo resolvconf -u
```

```sh
sudo cat /etc/resolv.conf
```

```sh
host www.google.com <ip_addr>
```

### Problems

```sh
sudo vim /etc/dhcp/dhclient.conf
```

Remove ***domain-name-servers*** from ***request***.

```sh
sudo dhclient
```

```sh
sudo cat /etc/resolv.conf
```

#### 

> RTNETLINK answers: File exists

```sh
sudo ip addr flush dev eth0
```
