# Java

## Installation

### Ubuntu

```sh
sudo apt-get install -y openjdk-9-jdk
```

### CentOS

```sh
sudo yum install -y java-1.8.0-openjdk-devel
```

## Get JAVA_HOME

```sh
java -XshowSettings:properties -version 2>&1 > /dev/null | grep 'java.home'
```
