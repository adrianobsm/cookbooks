# DNSMasq

### [Installation](https://echo.co/blog/os-x-1010-yosemite-local-development-environment-apache-php-and-mysql-homebrew)

```sh
brew install -v dnsmasq
```

```sh
echo 'address=/.dev/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.conf
```

```sh
echo 'listen-address=127.0.0.1' >> $(brew --prefix)/etc/dnsmasq.conf
```

```sh
echo 'port=35353' >> $(brew --prefix)/etc/dnsmasq.conf
```

```sh
brew services start dnsmasq
```

```sh
sudo mkdir -v /etc/resolver 

sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/dev'

sudo bash -c 'echo "port 35353" >> /etc/resolver/dev'
```
