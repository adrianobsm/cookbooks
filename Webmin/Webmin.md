# Webmin

## CentOS

```sh
sudo yum check-update
sudo yum install -y vim
```

```sh
sudo vim /etc/yum.repos.d/webmin.repo
```

```repo
[Webmin]
name=Webmin Distribution Neutral
#baseurl=http://download.webmin.com/download/yum
mirrorlist=http://download.webmin.com/download/yum/mirrorlist
enabled=1
```

```sh
sudo rpm --import http://www.webmin.com/jcameron-key.asc
sudo yum check-update
```

```sh
sudo yum install -y webmin
```

```sh
sudo chkconfig webmin on
sudo service webmin start
```

Open [https://192.168.33.10:10000](https://192.168.33.10:10000)

```sh
sudo /usr/libexec/webmin/changepass.pl /etc/webmin root secret
```

```txt
Username: root
Password: secret
```

### Change Port

```sh
sudo sed -i "s/port=10000/port=443/" /etc/webmin/miniserv.conf \
 && sudo sed -i "s/listen=10000/listen=443/" /etc/webmin/miniserv.conf
```

```sh
sudo /etc/webmin/restart
```

### Security

```sh
sudo systemctl start firewalld
sudo firewall-cmd --state
```

```sh
sudo firewall-cmd --add-port=10000/tcp --permanent
```

```sh
sudo firewall-cmd --add-port=443/tcp --permanent
sudo firewall-cmd --remove-port=10000/tcp --permanent
```

```sh
sudo firewall-cmd --reload
sudo /etc/webmin/restart
```
