# SSH

## Kerberos Server

### Configuration

#### CentOS

```sh
sudo vim /etc/ssh/sshd_config
```

```
KerberosAuthentication yes
GSSAPICleanupCredentials yes
```

```sh
sudo systemctl restart sshd
sudo systemctl status sshd
```

## Kerberos Client

### Configuration

#### OS X

```sh
sudo vim /private/etc/ssh/ssh_config
```

#### CentOS

```sh
sudo vim /etc/ssh/ssh_config
```

```sh
Host *.example.com
  GSSAPIAuthentication yes
  GSSAPIDelegateCredentials yes
```
