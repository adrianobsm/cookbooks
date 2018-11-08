# DigitalOcean

## Create User

```sh
adduser username
gpasswd -a username sudo
su - username
```

## Fix Locale

```sh
locale
sudo locale-gen "en_US.UTF-8"
sudo dpkg-reconfigure locales
```

## Login SSH

```sh
ssh-keygen
```

[OS X](https://github.com/beautifulcode/ssh-copy-id-for-OSX)

```sh
ssh-copy-id username@ip
ssh username@ip
```

### Block root access

```sh
sudo vim /etc/ssh/sshd_config

PermitRootLogin no

sudo service ssh restart
```

## Messsage

```sh
sudo rm -rf /etc/motd.tail
```

## Fix Aptitude

```sh
sudo apt-get clean
sudo mv /var/lib/apt/lists /var/lib/apt/lists.old
sudo mkdir -p /var/lib/apt/lists/partial
sudo apt-get update
```
