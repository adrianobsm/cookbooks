# Self-signed SSL Certificate

## Multi-domain SSL certificate

```sh
openssl req -x509 \
  -config /etc/ssl/certs/openssl.cnf \
  -extensions req_ext \
  -nodes \
  -days 730 \
  -newkey rsa:2048 \
  -sha256 \
  -keyout /etc/ssl/private/nginx-selfsigned.key \
  -out /etc/ssl/certs/nginx-selfsigned.crt
```
