# Export

## Export MySQL database

```sh
mysqldump -u username -p database > backup.sql
```

## Export MySQL database (PostgreSQL)

```sh
mysqldump -u username --extended-insert=FALSE --no-create-info --compact --compatible=postgresql database > file.sql
```

## Convert MySQL to PostgreSQL

```sh
sed "s/\\\'/\'\'/g" file.sql > file1.sql
```

## Import file to PostgreSQL

```sh
psql database < file1.sql
```
