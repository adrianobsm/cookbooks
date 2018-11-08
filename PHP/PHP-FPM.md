# PHP-FPM

## Services

### CentOS

```sh
sudo systemctl start php-fpm
sudo systemctl restart php-fpm
sudo systemctl reload php-fpm
sudo systemctl stop php-fpm
```

### Ubuntu

```sh
sudo service php-fpm start
sudo service php-fpm restart
sudo service php-fpm reload
sudo service php-fpm stop
```

## Test

### Dependencies

#### CentOS

```sh
sudo yum install -y fcgi
```

```sh
sed -i 's/^;pm\.status_path/pm.status_path/' /etc/opt/remi/php70/php-fpm.d/www.conf
```

#### Ubuntu

```sh
sudo apt-get install -y libfcgi0ldbl
```

```sh
sed -i 's/^;pm\.status_path/pm.status_path/' /usr/local/etc/php-fpm.d/www.conf
```

### Run

```sh
SCRIPT_NAME=/status \
SCRIPT_FILENAME=/status \
REQUEST_METHOD=GET \
cgi-fcgi -bind -connect 127.0.0.1:9000
```
