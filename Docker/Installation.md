# Installation

## OS X

```sh
brew cask install docker
```

## openSUSE

```sh
sudo zypper update -y
sudo zypper in docker
```

```sh
sudo systemctl start docker
sudo systemctl status docker
```

## CentOS

```sh
sudo yum update -y
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
```

```sh
sudo systemctl start docker
sudo systemctl status docker
```

## Ubuntu

```sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
```

```sh
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
apt-cache policy docker-engine
```

```sh
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
```

```sh
sudo apt-get install -y docker-engine
sudo service docker start
```

## Boot Start

```sh
sudo systemctl enable docker
sudo systemctl status docker
```

## Permissions

```sh
sudo usermod -aG docker $USER # need restart session
```
