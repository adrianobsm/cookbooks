# Proxy configurations

## List Configurations

```sh
npm config list
```

## Set Registry URL

```sh
npm config set registry http://registry.npmjs.org/
```

## Set Proxy

```sh
npm config set http-proxy $http_proxy
npm config set https-proxy $https_proxy
```

## Remove Proxy

```sh
npm config delete http-proxy
npm config delete https-proxy
```

## SSL

```sh
npm set strict-ssl false
```
