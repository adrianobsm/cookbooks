# Client

## Dependencies

###

```sh
sudo vim /etc/hosts
```

```
[ip] client.example.com
[ip] kdc.example.com
```

```sh
sudo hostnamectl set-hostname client.example.com
hostnamectl status
```

## Installation

### openSUSE

```sh
sudo zypper install -y krb5-client
```

### CentOS

```sh
sudo yum install -y krb5-workstation
```

### Ubuntu

```sh
sudo apt-get install -y krb5-user
```

## Configuration

```sh
sudo vim /etc/krb5.conf
```

```conf
includedir /etc/krb5.conf.d/

[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 dns_lookup_realm = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 rdns = false
 default_realm = EXAMPLE.COM
 default_ccache_name = KEYRING:persistent:%{uid}

[realms]
 EXAMPLE.COM = {
  kdc = kdc.example.com
  admin_server = kdc.example.com
 }

[domain_realm]
 .example.com = EXAMPLE.COM
 example.com = EXAMPLE.COM
```

###

```sh
sudo kadmin

kadmin:  addprinc -randkey host/client.example.com
kadmin:  ktadd host/client.example.com
kadmin:  exit
```

```sh
sudo mkdir /etc/security/keytabs
sudo mv /etc/krb5.keytab /etc/security/keytabs
```
