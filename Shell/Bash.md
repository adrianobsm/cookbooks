# Bash

## Turn bash auto-load automatically

```sh
sudo vim ~/.profile
```

```sh
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
```

## Restore

```sh
sudo cp /root/.bashrc /home/[username]
```

## Reload

```sh
souce ~/.bashrc
```
