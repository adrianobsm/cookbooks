# Gzip

## Nginx

### Static

```
gzip off;
gzip_static on;
```

```sh
ps ax | grep nginx
```

```sh
25043 ?        Ss     0:00 nginx: master process /usr/sbin/nginx -c /etc/nginx/nginx.conf
25044 ?        S      0:02 nginx: worker process
```

```sh
strace -p 25044 2>&1 | grep gz
```
