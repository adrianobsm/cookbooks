# FirewallD

##

```sh
sudo systemctl start firewalld.service
sudo systemctl status firewalld.service
```

```sh
sudo firewall-cmd --add-service=kerberos --permanent
sudo firewall-cmd --add-service=kadmin --permanent
```

```sh
sudo systemctl restart firewalld.service
sudo systemctl enable firewalld.service
```
