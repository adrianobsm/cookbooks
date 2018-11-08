# Axel

```sh
apt-get install axel
```

```sh
wget http://wilmer.gaast.net/downloads/axel-1.0b.tar.gz

tar -zxvf axel-1.0b.tar.gz

./configure

make install
```

```sh
axel --help
```

```sh
axel -n 8 url
```

## Custom configuration

```sh
vim ~/.axelrc

http_proxy = $http_proxy
https_proxy = $https_proxy
```
