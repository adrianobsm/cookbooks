# Kibana

## Installation

### OS X

```sh
brew install kibana
```

### CentOS

```sh
sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
```

```sh
sudo vim /etc/yum.repos.d/Elastic-Kibana.repo
```

```repo
[kibana-6.x]
name=Elastic repository for 6.x packages
baseurl=https://artifacts.elastic.co/packages/6.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
```

```sh
sudo yum install -y kibana
```

```sh
sudo ln -s /usr/share/kibana/bin/kibana /usr/bin
```

### Docker

#### Running

```sh
docker run -d \
 -p 5601:5601 \
 --name kibana \
 --restart always \
 -e ELASTICSEARCH_URL=http://[ip]:9200 \
 kibana:5.6.12
```

## Configuration

```sh
sed -i 's/^#server.host: .*/server.host: "localhost"/' /etc/kibana/kibana.yml
```

```sh
sudo systemctl start kibana
sudo systemctl status kibana
sudo systemctl enable kibana
```
