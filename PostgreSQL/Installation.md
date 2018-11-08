# Installation

## Ubuntu

```sh
sudo apt-get install postgresql postgresql-contrib
```

```sh
dpkg -l | grep postgres
```

### Remove

```sh
sudo apt-get --purge remove postgresql postgresql-doc postgresql-common
```

## OS X

Installation:

```sh
brew install postgres
```

Create database:

```sh
initdb /usr/local/var/postgres
```

Run on startup:

```sh
mkdir -p ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```

Show running status:

```sh
ps auxwww | grep postgres

pg_ctl -D /usr/local/var/postgres status

pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
```
