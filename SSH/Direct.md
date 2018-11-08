# Direct

## Linux

```sh
cat ~/.ssh/id_rsa.pub | ssh root@[domain] "cat >> ~/.ssh/authorized_keys"
```

## OS X

```sh
brew install ssh-copy-id
```

```sh
ssh-copy-id [username]@[domain]
```
