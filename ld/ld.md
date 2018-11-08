# ld

## View

```sh
ldd [binary]
```

## Load

```sh
ldconfig
```

```sh
ldconfig -p
```

## Temporally

```sh
LD_LIBRARY_PATH=[/path/to/libs] [program]
```

## Automatic

```sh
sudo touch /etc/ld.so.conf.d/librd.conf
sudo sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/librd.conf'
sudo ldconfig
```
