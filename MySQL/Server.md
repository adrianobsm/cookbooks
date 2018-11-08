# Server

## OS X

```sh
brew info mysql
brew install mysql
```

### Old Version

```sh
brew unlink mysql
```

```sh
brew install mysql@5.7
brew switch mysql@5.7 5.7.23
brew link mysql@5.7 --force
```

```sh
brew services start mysql@5.7
```

#### Issues

```sh
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)
```

```sh
brew services stop mysql@5.7
brew uninstall mysql@5.7
```

```sh
rm -rf /usr/local/var/mysql
rm /usr/local/etc/my.cnf
```

### Services

```sh
brew tap homebrew/services
brew services list
```

```sh
brew services start mysql
brew services restart mysql
brew services stop mysql
```
