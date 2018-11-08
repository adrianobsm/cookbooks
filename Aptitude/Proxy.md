# Proxy

**407 authenticationrequired**

```sh
sudo vim /etc/apt/apt.conf

Acquire::http::proxy "http://[username]:[password]@[ip]:[port]";
Acquire::https::proxy "http://[username]:[password]@[ip]:[port]";
Acquire::socks::proxy "http://[username]:[password]@[ip]:[port]";
```
