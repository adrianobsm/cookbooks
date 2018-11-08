# Installation

## CentOS

```sh
sudo yum install -y python27-python-pip
```

```sh
scl enable python27 bash
scl enable python27 'easy_install-2.7 pip'
```

```sh
sudo chmod -R o+rx /opt/rh/python27/root/usr/lib/python2.7/site-packages
```
