# Drone

## Run

```sh
docker run \
 --env DRONE_GITLAB=true \
 --env DRONE_GITLAB_URL=[domain] \
 --env DRONE_GITLAB_CLIENT=[client] \
 --env DRONE_GITLAB_SECRET=[secret] \
 --env DRONE_SECRET=[password] \
 --env DRONE_OPEN=false \
 --env DRONE_ADMIN=[username]
 --volume /var/lib/drone:/var/lib/drone \
 --restart=always \
 --publish=80:8000 \
 --detach=true \
 --name=drone \
 drone/drone:0.5
```

#### Agent

```sh
docker run \
 --env DRONE_SERVER=[domain] \
 --env DRONE_SECRET=[secret] \
 --volume /var/run/docker.sock:/var/run/docker.sock \
 --restart=always \
 --detach=true \
 --name=drone-agent \
 drone/drone:0.5 agent
```

### Logs

```sh
docker logs drone
```
