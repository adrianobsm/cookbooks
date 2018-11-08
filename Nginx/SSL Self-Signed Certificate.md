# SSL Self-Signed Certificate

```sh
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
```

```
Country Name (2 letter code) [AU]:BR
State or Province Name (full name) [Some-State]:Distrito Federal
Locality Name (eg, city) []:Brasilia
Organization Name (eg, company) [Internet Widgits Pty Ltd]:Company Ltda.
Organizational Unit Name (eg, section) []:Company
Common Name (e.g. server FQDN or YOUR name) []:[server_ip_address]
Email Address []:deploy@company.com
```

```sh
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
```

## Nginx

### Snippets

```sh
sudo vim /etc/nginx/snippets/self-signed.conf

ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;
```

```sh
sudo vim /etc/nginx/snippets/ssl-params.conf

ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
ssl_prefer_server_ciphers on;
ssl_ciphers "EECDH+AESGCM:EDH+AESGCM:AES256+EECDH:AES256+EDH";
ssl_ecdh_curve secp384r1;
ssl_session_cache shared:SSL:10m;
ssl_session_tickets off;
ssl_stapling on;
ssl_stapling_verify on;
resolver 8.8.8.8 8.8.4.4 valid=300s;
resolver_timeout 5s;
add_header Strict-Transport-Security "max-age=63072000; includeSubdomains";
add_header X-Frame-Options DENY;
add_header X-Content-Type-Options nosniff;

ssl_dhparam /etc/ssl/certs/dhparam.pem;
```

### Sites

```sh
sudo vim /etc/nginx/sites-available/default
```

#### Without SSL

```
server {
	listen 80;
	listen [::]:80;

	root /home/deploy/[appname]/public;

	index index.html;

	server_name [domain.com];

	location / {
		try_files $uri $uri/ /index.html =404;
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

  index index.html;

  server_name [domain.com];

	location / {
		try_files $uri $uri/ /index.html =404;
	}

	include snippets/self-signed.conf;
	include snippets/ssl-params.conf;
}
```

### Test

```sh
sudo nginx -t

nginx: [warn] "ssl_stapling" ignored, issuer certificate not found
nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
nginx: configuration file /etc/nginx/nginx.conf test is successful
```

### Restart

```sh
sudo service nginx restart
```
