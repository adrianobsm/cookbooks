# Filebeat

## Installing

### OS X

```sh
brew install filebeat
```

### CentOS

```sh
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.4.2-x86_64.rpm
sudo rpm -vi filebeat-6.4.2-x86_64.rpm
rm -rf filebeat-6.4.2-x86_64.rpm
```

### Ubuntu

```sh
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.4.2-amd64.deb
sudo dpkg -i filebeat-6.4.2-amd64.deb
rm -rf filebeat-6.4.2-amd64.deb
```

## Commands

### Debug

```sh
filebeat -e
```

###

```sh
filebeat -e -c /etc/filebeat/filebeat.yml
```

###

```sh
filebeat -e -d "publish"
filebeat -e -d "*"
```
