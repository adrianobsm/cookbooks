# General

## Clean Cache

```sh
npm cache clean
```

## Fix Permissions

```sh
sudo chown -R `whoami` ~/.npm
```

```sh
sudo chown -R `whoami` /usr/lib/node_modules
sudo chown -R `whoami` /usr/local/lib/node_modules
sudo chown -R `whoami` /usr/local
```

```sh
npm config set prefix ~/.npm
```

```sh
export PATH="$PATH:$HOME/.npm/bin"
```

## Update NPM Global Packages

```sh
npm update -g
```

## Install Packages Without Symbolic Links

```sh
npm install --no-bin-links
```
