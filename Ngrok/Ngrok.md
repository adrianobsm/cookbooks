# Ngrok

```sh
wget -qO- -O tmp.zip https://dl.ngrok.com/ngrok_2.0.19_darwin_amd64.zip && unzip tmp.zip && rm tmp.zip
chmod +x ngrok
sudo mv ngrok /usr/local/bin
```

## Authtoken

Access [ngrok dashboard](https://dashboard.ngrok.com) and copy authtoken

```sh
ngrok authtoken <authtoken>
```

## Start

```sh
ngrok http 80
```

### Subdomian (paid)

```sh
ngrok http -subdomain=test 80
```
