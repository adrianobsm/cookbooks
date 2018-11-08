# Portainer

## Running

```sh
docker run -d \
 -p 9000:9000 \
 --name portainer \
 --restart always \
 -v /var/run/docker.sock:/var/run/docker.sock \
 -v /opt/portainer/data:/data \
 portainer/portainer:1.19.2
```
