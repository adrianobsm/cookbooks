# Commands

## Set Default

```sh
which bash
```

```sh
sudo chsh -s /bin/bash [username]
```

## Show Installed

```sh
cat /etc/shells
```

## Show Current

```sh
echo $SHELL
```

## Change Default

```sh
chsh -s /bin/bash
```

## Execute a Command From Another Directory

```sh
( cd dir && git init )
```

```sh
( cd dir ; git init )
```

## Create Directory For Every File and Move

```sh
find *.md -prune -type f -exec \
  sh -c 'mkdir -p "${0%.*}" && mv "$0" "${0%.*}"' {} \;
```
