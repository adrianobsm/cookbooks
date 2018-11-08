# Zypper

## Install

```sh
sudo zypper install -y [package]
```

## Update

```sh
sudo zypper update -y
```

## Search

```sh
sudo zypper search [package]
```

## Show Dependencies

```sh
sudo zypper info [package]
```

## Repository

```sh
sudo vim /etc/zypp/repos.d/[name].repo
```

## Remove

```sh
sudo zypper remove [package]
```

> Caution with this command. Take a look first at what packages are be removed before exec.

## Clean

```sh
sudo zypper clean --all
```

## Show Installed

```sh
sudo zypper search --installed-only
```
