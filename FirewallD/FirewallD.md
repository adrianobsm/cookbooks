# FirewallD

## Installation

### CentOS

```sh
sudo yum install -y firewalld
```

## Commands

### Status

```sh
sudo systemctl is-active firewalld
```

### Control

```sh
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl status firewalld
sudo systemctl stop firewalld
```

###

```sh
sudo systemctl mask firewalld
sudo systemctl unmask firewalld
```

###

```sh
sudo firewall-cmd --list-all
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload
```
