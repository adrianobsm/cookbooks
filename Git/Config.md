# Config

## Core

### Editor

```sh
git config --global core.editor vim
```

### Auto CRLF

```sh
git config core.autocrlf true
git config core.autocrlf input
git config core.autocrlf false
```

## Credential

```sh
git config --global credential.helper store
```

### OS X

```sh
git config --global credential.helper osxkeychain
```

```sh
git credential-osxkeychain [command]
```

## User

```sh
git config --global user.name "[Name]"
git config --global user.email [email]
```

## Merge

```sh
git config --global merge.tool vimdiff
```

## Push

```sh
git config --global push.default current
```

## Branch

```sh
git config --global branch.autosetupmerge always
```

## List

```sh
git config --list
```
