# Kitematic

## Installation

### Ubuntu

```sh
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
sudo gpasswd -a ${USER} docker
```

```sh
sudo service docker restart
newgrp docker
```

```sh
cd /opt
sudo git clone https://github.com/zedtux/kitematic
```

```sh
cd kitematic
sudo git checkout linux-support && sudo make
```

```sh
chmod -R g+w .
chgrp -R docker .
```

```sh
npm start
```
