# NTP

## Installation

### CentOS

```sh
sudo yum install -y ntp
```

```sh
ntpdate 0.rhel.pool.ntp.org
```

```sh
sudo systemctl start ntpd.service
sudo systemctl enable ntpd.service
```
