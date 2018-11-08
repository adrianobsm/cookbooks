# KDI

Kit para desenvolvimento integrado.

## Create User

```sh
dscl . -list /Users
sudo dscl . create /Users/ditec IsHidden 1
sudo mkdir /Users/ditec
open /Users/ditec
```

## Apache

```sh
sudo mv /etc/apache2 /etc/apache2_bkp
sudo ln -s /Users/ditec/kdi/apache2 /etc/apache2
```

```sh
sudo apachectl restart
```

```sh
sudo bash -c 'echo "127.0.0.1       localhost.bb.com.br" >> /etc/hosts'
```

```sh
sudo bash -c 'echo "127.0.0.1       macbook" >> /etc/hosts'
```
