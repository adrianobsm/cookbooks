# Client

## Installing

### OS X

```sh
brew install mysql-client
```

```sh
echo '\n# MySQL Client\nexport PATH="/usr/local/opt/mysql-client/bin:$PATH"' >> ~/.zshrc
```

## Dump

```sh
mysqldump -h [host] -P 3306 -u [username] -p[password] --databases [database] > [filename].sql
```

## Import

```sh
mysql -h [host] -P 3306 -u [username] -p[password] [database] < [filename].sql
```

```sh
mysqlimport -h [host] -P 3306 -u [username] -p[password] [database] [filename].sql
```

## Clone

```sh
mysql -u [username] -p
```

```sql
CREATE DATABASE [dbname];
\q;
```

```sh
mysqldump -u [username] --password=[password] [dbname1] | mysql -u [username] --password=[password] [dbname2]
```
