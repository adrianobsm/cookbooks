# Issues

## No module named yum

```sh
sudo yum update
```

```sh
rpm -qa yum
yum-3.4.3-152.fc20.noarch
```

```sh
wget http://rpmfind.net/linux/fedora-secondary/releases/29/Everything/s390x/os/Packages/y/yum-3.4.3-518.fc29.noarch.rpm
sudo rpm -Uvh --force yum-3.4.3-518.fc29.noarch.rpm
```

## No module named urlgrabber

```sh
rpm -qa python-urlgrabber
python-urlgrabber-3.9.1-32.fc20.noarch
```

```sh
wget http://rpmfind.net/linux/fedora-secondary/releases/27/Everything/aarch64/os/Packages/p/python-urlgrabber-3.10.1-12.fc27.noarch.rpm
sudo rpm -Uvh --force python-urlgrabber-3.10.1-12.fc27.noarch.rpm
```
