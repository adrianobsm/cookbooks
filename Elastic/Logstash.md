# Logstash

## Installation

### OS X

```sh
brew install logstash
```

### CentOS

```sh
sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
```

```sh
sudo vim /etc/yum.repos.d/Elastic-Logstash.repo
```

```repo
[logstash-6.x]
name=Elastic repository for 6.x packages
baseurl=https://artifacts.elastic.co/packages/6.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
```

```sh
sudo yum install -y logstash
```

```sh
sudo ln -s /usr/share/logstash/bin/logstash /usr/bin
```

### Ubuntu

```sh
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
sudo apt-get update -y
```

```sh
sudo apt-get install -y logstash
```

### Docker

#### Running

```sh
docker run -d \
 -p 5000:5000 \
 -p 9600:9600 \
 --name logstash \
 --restart always \
 logstash:5.6.12-alpine
```

## Configuration

```sh
logstash -e
```

```sh
logstash \
 --path.config /usr/share/logstash/pipeline/logstash.conf \
 --config.reload.automatic \
 --path.data /usr/share/logstash/data
```

```sh
sudo systemctl start logstash
sudo systemctl status logstash
sudo systemctl enable logstash
```
