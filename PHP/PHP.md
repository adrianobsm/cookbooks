# PHP

Simulate a install to see what will be install and check version of PHP:

```sh
sudo apt-get -s install php5
sudo apt-cache policy php5
```

Install PHP and dependencies

```sh
sudo apt-get update
sudo apt-get install -y php5-cli php5-curl php5-gd php5-mcrypt php5-readline php5-xdebug
```

### FastCGI Process Manager (FPM)

```sh
sudo apt-get install -y php5-fpm
```

```sh
sudo vim /etc/php5/fpm/php.ini
```

```sh
cgi.fix_pathinfo=0
date.timezone = America/Sao_Paulo
```

> Repeat this for `sudo vim /etc/php5/cli/php.ini`

```sh
sudo service php5-fpm restart
```

##### FPM + Nginx

```sh
cat << EOF | sudo tee -a /usr/share/nginx/html/info.php
<?php phpinfo();
EOF
```

##### FPM + Apache2

```sh
cat << EOF | sudo tee -a /etc/apt/sources.list

deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
EOF
```

```sh
sudo apt-get update
sudo apt-get install -y libapache2-mod-fastcgi
```

```sh
cat << EOF | sudo tee -a /etc/apache2/conf-available/php5-fpm.conf
<IfModule mod_fastcgi.c>
	AddHandler php5-fcgi .php
	Action php5-fcgi /php5-fcgi
	Alias /php5-fcgi /usr/lib/cgi-bin/php5-fcgi
	FastCgiExternalServer /usr/lib/cgi-bin/php5-fcgi -socket /var/run/php5-fpm.sock -pass-header Authorization

	<Directory /usr/lib/cgi-bin>
		Require all granted
	</Directory>
</IfModule>
EOF
```

```sh
sudo a2enmod actions fastcgi alias
sudo a2enconf php5-fpm
sudo service apache2 restart
```

```sh
cat << EOF | sudo tee -a /var/www/html/info.php
<?php phpinfo();
EOF
```

##### Permissions

```sh
ll /var/run/php5-fpm.sock

srw-rw---- 1 www-data www-data 0 Jun 18 11:15 /var/run/php5-fpm.sock=
```

```sh
sudo vim /etc/php5/fpm/pool.d/www.conf

listen.owner = www-data
listen.group = www-data
listen.mode = 0660
```

```sh
sudo service php5-fpm restart
```

#### Xdebug

```sh
cat /etc/php5/mods-available/xdebug.ini
```

```sh
cat << EOF | sudo tee -a /etc/php5/mods-available/xdebug.ini

xdebug.scream=0
xdebug.cli_color=1
xdebug.show_local_vars=1
xdebug.max_nesting_level=250
EOF
```

#### PHP5 Repository

```sh
sudo add-apt-repository -y ppa:ondrej/php5
```

##### What is that?

```sh
sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini
sudo sed -i "s/disable_functions = .*/disable_functions = /" /etc/php5/cli/php.ini
```
