# librdkafka

## Dependencies

### openSUSE

```sh
sudo zypper install -y git-core gcc-c++ cyrus-sasl-devel
```

### CentOS

```sh
sudo yum install -y git gcc-c++ zlib-devel cyrus-sasl-devel
```

### Ubuntu

```sh
sudo apt-get install -y git g++ zlib1g-dev libsasl2-dev
```

## Installation

```sh
git clone https://github.com/edenhill/librdkafka.git
( cd librdkafka && ./configure && make && sudo make install )
```

```sh
( cd librdkafka && examples/rdkafka_example -X builtin.features )
```

```sh
rm -rf librdkafka
```
