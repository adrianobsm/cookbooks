# Logrotate

## Installation

### OS X

```sh
brew install logrotate
```

### CentOS

```sh
yum install -y logrotate
```

### Ubuntu

```sh
apt-get install -y logrotate
```

##

```sh
vim /etc/logrotate.conf
```

```sh
vim /etc/logrotate.d/apache
```

```
###ROOT###/var/log/apache/*_log {
    missingok
    rotate 52
    compress
    delaycompress
    notifempty
    create 640 ###SITE### ###SITE###
    sharedscripts
    postrotate
        ###ROOT###/etc/init.d/apache reload
    endscript
}
```
