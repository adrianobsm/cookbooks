# SSL lvh.me Certificate

## Installation

```sh
brew install nginx
```

## Nginx

```sh
vim /usr/local/etc/nginx/nginx.conf

http {
    ...

    keepalive_timeout  0;

    ...

    map $host $port {
        default 3000;
        [appname].lvh.me 3001;
    }

    # HTTPS server

    server {
        listen       443 ssl;
        server_name  *.lvh.me;

        ssl_certificate      lvh.cert;
        ssl_certificate_key  lvh.key;

        ssl_session_cache    shared:SSL:1m;
        ssl_session_timeout  15m;

        ssl_ciphers  HIGH:!aNULL:!MD5;x
        ssl_prefer_server_ciphers  on;

        rewrite_log  on;

        # location / {
        #     root   html;
        #     index  index.html;
        # }

        location / {
            proxy_pass        http://127.0.0.1:$port;
            proxy_set_header  Accept-Encoding     "";
            proxy_set_header  Host                $host;
            proxy_set_header  X-Real-IP           $remote_addr;
            proxy_set_header  X-Forwarded-For     $proxy_add_x_forwarded_for;
            proxy_set_header  X-Forwarded-Proto   $scheme;
            add_header        Front-End-Https     on;
        }
    }
}
```

## Self-signed Certificate

Go to http://www.selfsignedcertificate.com/ and input __*.lvh.me__ as the server name.

```sh
cd /usr/local/etc/nginx

curl <link> > lvh.key
curl <link> > lvh.cert
```

## Restart

```sh
sudo nginx
sudo nginx -s reload
```

## Trust the Certificate

```sh
open /Applications/Utilities/Keychain\ Access.app lvh.cert
```
