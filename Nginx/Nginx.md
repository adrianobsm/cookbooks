# Nginx

## Installation

### OS X

```sh
brew install nginx
```

```sh
brew tap homebrew/services
brew services list
```

```sh
brew services start nginx
brew services restart nginx
brew services stop nginx
```

### CentOS

```sh
sudo yum install -y epel-release nginx
```

```sh
sudo systemctl start nginx
sudo systemctl status nginx
sudo systemctl enable nginx
```

### Ubuntu

```sh
sudo apt-get update -y
sudo apt-get install -y nginx
```
