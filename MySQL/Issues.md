# Issues

## Connection Failed

Host 'IP_ADDRESS' is not allowed to connect to this MySQL server

```sh
```

## ERROR 2002 (HY000)

Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)

```
mysqld stop
touch /tmp/mysql.sock
mysqld_safe restart
```

## OS X

```
rm -rf /usr/local/var/mysql/macbook.local.err
mysql.server start
```

## Caching SHA-2 Authentication Plugin

```sh
PHP Fatal error:  Uncaught PDOException: PDO::__construct(): The server requested authentication method unknown to the client [caching_sha2_password]
```

### Dependencies

#### Ubuntu

```sh
sudo apt-get install -y libmysqlclient20
```

### Without Plugin

#### OS X

```sh
mysql --verbose --help | grep my.cnf
```

```sh
vim /usr/local/etc/my.cnf

[mysqld]
default-authentication-plugin = mysql_native_password
```

```sh
mysql -u root -p

ALTER USER 'username'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
```

```sh
brew services restart mysql
```
