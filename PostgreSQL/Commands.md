# Commands

## User

```sh
sudo -u postgres createuser --interactive
[username]
```

```sh
sudo -u postgres psql
\password postgres
\q
```

## Create

```sh
createdb [database_name]
```

## Connect

```sh
\connect [database_name];
\q
```

## Config

```sh
sudo vim /etc/postgresql/9.5/main/postgresql.conf
listen_addresses = 'localhost'

sudo service postgresql restart
```
