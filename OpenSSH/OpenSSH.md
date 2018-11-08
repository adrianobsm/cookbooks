# OpenSSH

## Server

### Installation

Speed up SSH login

```sh
cat << EOF | sudo tee -a /etc/ssh/sshd_config
UseDNS no
EOF

sudo service ssh restart
```
