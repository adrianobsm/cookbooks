# Wekan

## Installation

### Docker

```sh
docker run -d \
 -p 8080:8080 \
 --name wekan \
 --restart always \
 -e MONGO_URL=mongodb://[ip]:27017/wekan \
 -e ROOT_URL=http://[ip]:8080 \
 wekanteam/wekan:v1.50
```
