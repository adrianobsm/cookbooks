# Prometheus

## Running

```sh
docker run -d \
 -p 9090:9090 \
 --name prometheus \
 --restart always \
 prom/prometheus:v2.4.2
```
