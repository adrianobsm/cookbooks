# Installation

## OS X

```sh
brew install kafkacat
```

## Linux

### Dependencies

#### openSUSE

```sh
sudo zypper install -y gcc-c++ git-core make wget
```

#### Ubuntu

```sh
sudo apt-get install -y build-essential git make wget zlib1g-dev
```

#### CentOS

```sh
sudo yum install -y git make wget gcc-c++ zlib-devel
```

### Running

```sh
git clone https://github.com/edenhill/kafkacat.git
( cd kafkacat && ./bootstrap.sh )
```

```sh
( cd kafkacat && sudo mv ./kafkacat /usr/local/bin)
```

```sh
rm -rf kafkacat
```
