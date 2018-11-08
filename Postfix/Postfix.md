# Postfix

```sh
sudo apt-get update
sudo apt-get install postfix
```

```sh
sudo vim /etc/postfix/main.cf
```

```cf
myhostname = domain.com
```

```sh
sudo vim /etc/postfix/virtual
```

```txt
username@domain.com username
```

```sh
sudo postmap /etc/postfix/virtual
sudo service postfix restart
```

```sh
vim /var/mail/username
```

```sh
sudo apt-get install mailutils
sudo mail
```

```sh
sudo ufw allow 25
```
