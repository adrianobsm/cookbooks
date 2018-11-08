# Nginx Auth

## Installation

### CentOS

```sh
sudo yum install -y httpd-tools
```

```sh
sudo htpasswd -c /etc/nginx/htpasswd.users admin
```

## Configuration

```sh
sudo vim /etc/nginx/conf.d/[appname].conf
```

```conf
server {
    ...

    auth_basic "Restricted Access";
    auth_basic_user_file /etc/nginx/htpasswd.users;

    ...
}
```
