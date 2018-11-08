# DNS

## Cache

```sh
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder
```

```sh
ipconfig /flushdns
```

```sh
/etc/init.d/named restart
/etc/init.d/nscd restart
```

### Browser

```
chrome://net-internals/#dns
```
