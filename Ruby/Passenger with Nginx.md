# Passenger with Nginx

## Installation

```sh
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates

sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

sudo apt-get install -y nginx-extras passenger

sudo service nginx start
```

## Nginx

### Passenger

```sh
sudo vim /etc/nginx/nginx.conf

include /etc/nginx/passenger.conf;
```

```sh
sudo vim /etc/nginx/passenger.conf
passenger_ruby /home/deploy/.rbenv/shims/ruby;
```

```sh
sudo service nginx restart
```

### Sites

```sh
sudo vim /etc/nginx/sites-available/[appname]
```

#### Without SSL

```
server {
	listen 80;
	listen [::]:80;

	root /home/deploy/[appname]/public;

	index index.html;

	server_name [domain.com];

	passenger_enabled on;
	rails_env production;

	error_page 500 502 503 504 /50x.html;

	location = /50x.html {
		root html;
	}
}
```

#### With SSL

```
server {
	listen 80;
	listen [::]:80;

	server_name [domain.com];

	return 302 https://$server_name$request_uri;
}

server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;

	root /home/deploy/[appname]/public;

	server_name [domain.com];

	passenger_enabled on;
	rails_env production;

	include snippets/self-signed.conf;
	include snippets/ssl-params.conf;
}
```

### Enable

```sh
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/[appname] /etc/nginx/sites-enabled
```

### Restart

```sh
sudo service nginx restart
```
