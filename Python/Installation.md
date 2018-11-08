# Installation

## CentOS

```sh
sudo yum update -y
sudo yum install -y centos-release-scl
sudo yum install -y python27
```

```sh
scl enable python27 bash
```

### From Source

```sh
sudo yum -y update
sudo yum -y groupinstall 'Development Tools'
sudo yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel
```

```sh
cd /tmp
wget https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz
```

```sh
tar xfz Python-2.7.15.tgz
```

```sh
cd Python-2.7.15
./configure --with-threads --enable-shared
make
sudo make altinstall
```
