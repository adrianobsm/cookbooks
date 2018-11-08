# Proxy

```sh
echo '\n# Proxy
export http_proxy=http://$(ipconfig getifaddr en0):3128
export https_proxy=$http_proxy
export no_proxy=localhost,127.0.0.1' >> ~/.zshrc
```

> The environment variable `HTTP_PROXY` is discouraged. Use `http_proxy` instead.
