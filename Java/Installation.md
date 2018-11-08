# Installation

## CentOS

```sh
yum search java | grep -i --color JDK
sudo yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel
```

```sh
ls -l /usr/lib/jvm/
```

```sh
cat << EOF | sudo tee -a ~/.bashrc

export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.45-28.b13.el6_6.x86_64"
EOF
```

## Windows

### Java Home Path

```sh
setx /M JAVA_HOME "C:\Program Files\Java\jre7"
```
