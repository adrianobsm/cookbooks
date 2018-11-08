# Cron Job

## Installing

### Linux

```sh
sudo apt-get install -y cron
```

##

```sh
crontab -u [username] -e
```

```sh
crontab -u [username] -l
```

```sh
crontab -u [username] -r
```

```sh
sudo service cron status
sudo service cron start
sudo service cron restart
```

```sh
cat /etc/crontab
```

```sh
crontab -u [username] /etc/cron.d/[filename]
```
