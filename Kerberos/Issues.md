# Issues

## Invalid UID in persistent keyring name

```sh
kadmin.local
kadmin.local: Invalid UID in persistent keyring name while opening default credentials cache
```

```sh
sudo vim /etc/krb5.conf
```

```conf
[libdefaults]
 # default_ccache_name = KEYRING:persistent:%{uid}
```

## Cannot determine realm for host

```sh
sudo kinit -k -t /etc/krb5.keytab
kinit: Cannot determine realm for host (principal host/[hostname]@[REALM])
```

```sh
vim /etc/krb5.conf
```

```conf
...

[domain_realm]
 .example.com = EXAMPLE.COM
 example.com = EXAMPLE.COM
```

## Keytab contains no suitable keys for host

```sh
kinit -k -t /etc/krb5.keytab
kinit: Keytab contains no suitable keys for host/[hostname]@[REALM] while getting initial credentials
```

```sh
klist -k -t -e /etc/krb5.keytab
```

```sh
kinit -k -t /etc/krb5.keytab host/kdc.cw.com@CW.COM
```
