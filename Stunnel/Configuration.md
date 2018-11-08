# Configuration

## OS X

```sh
sudo sed -r -i "s/^;include = (.*)/include = \1/g" /usr/local/etc/stunnel/stunnel.conf
```

```sh
sudo mkdir /usr/local/etc/stunnel/conf.d
```

```sh
sudo tee -a /usr/local/etc/stunnel/conf.d/https.conf <<EOF
[https]
client = yes
accept = 443
connect = [ip]:443
verify = 2
CApath = /etc/ssl/certs
CAfile = stunnel.pem
TIMEOUTclose = 300
TIMEOUTidle = 30
EOF
```

## Linux

```sh
sudo bash -c 'echo "include = /etc/stunnel/conf.d" >> /etc/stunnel/stunnel.conf'
```

```sh
sudo mkdir /etc/stunnel/conf.d
```

```sh
sudo tee -a /etc/stunnel/conf.d/https.conf <<EOF
[https]
client = yes
accept = 443
connect = [ip]:443
verify = 2
CApath = /etc/ssl/certs
CAfile = stunnel.pem
TIMEOUTclose = 300
TIMEOUTidle = 30
EOF
```
