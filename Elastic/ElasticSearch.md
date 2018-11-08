# ElasticSearch

## Installation

### OS X

```sh
brew install elasticsearch
```

### CentOS

```sh
sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
```

```sh
sudo vim /etc/yum.repos.d/Elastic-Elasticsearch.repo
```

```repo
[elasticsearch-6.x]
name=Elastic repository for 6.x packages
baseurl=https://artifacts.elastic.co/packages/6.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
```

```sh
sudo yum install -y elasticsearch
```

```sh
sudo ln -s /usr/share/elasticsearch/bin/elasticsearch /usr/bin
```

### Docker

#### Running

```sh
docker run -d \
 -p 9200:9200 \
 -p 9300:9300 \
 --name elasticsearch \
 --restart always \
 elasticsearch:5.6.12-alpine
```

## Configuration

```sh
sed -i 's/^#network.host: .*/network.host: localhost/' /etc/elasticsearch/elasticsearch.yml
```

```sh
sudo systemctl start elasticsearch
sudo systemctl status elasticsearch
sudo systemctl enable elasticsearch
```
