# Ignore

## Linux

```sh
git config --global core.excludesfile '~/.gitignore'
```

### Find and remove .DS_Store files

```sh
find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch
```

## Windows

```sh
git config --global core.excludesfile "%USERPROFILE%\.gitignore"
```

### Find and remove Thumbs.db files

```sh
find . -name Thumbs.db -print0 | xargs -0 git rm -f --ignore-unmatch
```
