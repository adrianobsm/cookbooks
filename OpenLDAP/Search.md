# Search

```
ldapwhoami -vvv -h [host] -p 389  -D "cn=Manager,dc=domain,dc=com" -x -w admin
```

```
ldapsearch -h [host] -p 389 -x -D "cn=Manager,dc=domain,dc=com" -b "dc=domain,dc=com" -w admin
```

```
ldapsearch -x -D "cn=Manager,dc=domain,dc=com" \
 -w admin \
 -H ldap://[host] \
 -b "ou=peoples,dc=domain,dc=com" \
 -s sub 'uid=username'
```
