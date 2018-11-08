# Permissions

Change nginx default user

```sh
sudo vim /etc/php5/fpm/pool.d

user = www-data
group = www-data

sudo service php5-fpm restart
```
