# Images

## List Images

```sh
docker images -q
```

## Remove

```sh
docker rmi [image]
````

### Remove All Images

```sh
docker rmi $(docker images -q)
````

### Remove Untagged Images

```sh
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
```
