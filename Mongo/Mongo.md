# Mongo

## Running

```sh
docker run -d \
 -p 27017:27017 \
 --name mongo \
 --restart always \
 -e MONGO_INITDB_ROOT_USERNAME=root \
 -e MONGO_INITDB_ROOT_PASSWORD=Pa$$w0rd! \
 mongo:4.1.3
```
