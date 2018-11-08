# General

Only repository

```sh
git config --bool core.bare true
```

## SSH key

Generate SSH key

```sh
ssh-keygen -t rsa -C "[email]"
```

Access home folder

```sh
cd ~/.ssh/
```

Copy RSA key

```sh
cat id_rsa.pub
```

Fix Pull

```sh
git reset --hard HEAD
git clean -f -d
git pull
```
