# Installation

## Server

### OS X

1.  System Preferences
2.  Sharing
3.  \[Enable] Remote Login

### CentOS

```sh
sudo yum install -y openssh-server
```

```sh
sudo systemctl start sshd.service
sudo systemctl status sshd.service
```

## Client

### CentOS

```sh
sudo yum install -y openssh-clients
```
