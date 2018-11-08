# Server

## Dependencies

###

```sh
sudo vim /etc/hosts
```

```
[ip] kdc.example.com
[ip] client.example.com
```

```sh
sudo hostnamectl set-hostname kdc.example.com
hostnamectl status
```

```sh
shutdown -r now
```

## Installation

### CentOS

```sh
sudo yum install -y krb5-server krb5-libs
```

## Configuration

###

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
sudo vim /var/kerberos/krb5kdc/kdc.conf
```

```conf
[kdcdefaults]
 kdc_ports = 88
 kdc_tcp_ports = 88

[realms]
 EXAMPLE.COM = {
  # master_key_type = aes256-cts
  default_principle_flags = +preauth
  acl_file = /var/kerberos/krb5kdc/kadm5.acl
  dict_file = /usr/share/dict/words
  admin_keytab = /var/kerberos/krb5kdc/kadm5.keytab
  supported_enctypes = aes256-cts:normal aes128-cts:normal des3-hmac-sha1:normal arcfour-hmac:normal camellia256-cts:normal camellia128-cts:normal des-hmac-sha1:normal des-cbc-md5:normal des-cbc-crc:normal
 }
```

###

```sh
sudo vim /var/kerberos/krb5kdc/kadm5.acl
```

```acl
*/admin@EXAMPLE.COM *
```

###

```sh
sudo kdb5_util create -r EXAMPLE.COM -s
```

###

```sh
sudo kadmin.local

kadmin.local:  addprinc root/admin
kadmin.local:  ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/admin
kadmin.local:  ktadd -k /var/kerberos/krb5kdc/kadm5.keytab kadmin/changepw
kadmin.local:  exit
```

###

```sh
sudo systemctl start krb5kdc.service
systemctl status krb5kdc.service
sudo systemctl enable krb5kdc.service
```

```sh
sudo systemctl start kadmin.service
systemctl status kadmin.service
sudo systemctl enable kadmin.service
```
