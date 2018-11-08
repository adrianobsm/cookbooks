# Proxy

| Variables |
| --- |
| http_proxy |
| https_proxy |
| ftp_proxy |
| rsync_proxy |
| no_proxy |

## Set

```sh
export http_proxy=[URL] https_proxy=[URL] no_proxy=localhost,127.0.0.1
```

| URL |
| --- |
| `http://[username]:[password]@[host]:[port]`` |

## Unset

```sh
unset http_proxy https_proxy no_proxy
```

## Keep Variables

```sh
sudo cat /etc/sudoers.d/proxy
```

```sh
sudo tee -a /etc/sudoers.d/proxy <<EOF
Defaults env_keep += "HTTP_PROXY HTTPS_PROXY FTP_PROXY NO_PROXY"
Defaults env_keep += "http_proxy https_proxy ftp_proxy no_proxy"
EOF
```

### Test

```sh
sudo env | grep 'http_proxy\|https_proxy\|ftp_proxy\|no_proxy'
```
