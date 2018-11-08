# Drone Cache

```sh
docker run --rm \
 -e DRONE_REPO=[group/repo] \
 -e DRONE_REPO_BRANCH=develop \
 -e DRONE_COMMIT_BRANCH=develop \

 -e PLUGIN_MOUNT=/drone/bundle \
 -e PLUGIN_RESTORE=false \
 -e PLUGIN_REBUILD=true \

 -e SFTP_CACHE_SERVER=[ip]:22 \
 -e SFTP_CACHE_PATH=/cache \
 -e SFTP_CACHE_USERNAME=[username] \
 -e SFTP_CACHE_PASSWORD=[password] \
 plugins/sftp-cache
```

```sh
drone secret add --image=plugins/sftp-cache \
 [group/repo] SFTP_CACHE_SERVER [ip]:22
```

```sh
drone secret add --image=plugins/sftp-cache \
 [group/repo] SFTP_CACHE_PATH /cache
```

```sh
drone secret add --image=plugins/sftp-cache \
 [group/repo] SFTP_CACHE_USERNAME [username]
```

```sh
drone secret add --image=plugins/sftp-cache \
 [group/repo] SFTP_CACHE_PASSWORD [password]
```

```sh
drone secret ls [group/repo]
```

```sh
drone sign [group/repo]
```
