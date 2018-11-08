# Privileges

##

```sql
GRANT ALL PRIVILEGES ON '[dbname]'.* TO '[username]'@'[localhost]';
```

##

```sql
SHOW GRANTS;
SHOW GRANTS FOR CURRENT_USER;
SHOW GRANTS FOR CURRENT_USER();
```

```sql
SHOW GRANTS FOR '[username]'@'[localhost]';
```

```sql
FLUSH PRIVILEGES;
```
