# ZSH

```sh
echo $SHELL
sudo apt-get update
sudo apt-get install -y zsh
chsh -s /bin/zsh
```

##### Problems

chsh: PAM: Authentication failure

```sh
sudo vim /etc/pam.d/chsh

#comment
auth required pam_shells.so

sudo chsh $USER -s $(which zsh)
```
