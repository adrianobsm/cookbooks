# Issues

## Authentication Failure

```
chsh: PAM: Authentication failure
```

```sh
sudo vim /etc/pam.d/chsh
```

## Auth Required

```
auth required pam_shells.so
```

```sh
sudo chsh $USER -s $(which zsh)
```
