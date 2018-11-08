# Clarity

## Dependencies

### Ubuntu

```sh
sudo apt-get install -y libmysqlclient-dev ruby-dev g++
```

Install gems

## Installation

```sh
sudo gem install mysql eventmachine eventmachine_httpserver json clarity
```

## Start server

```sh
sudo clarity --username=admin --password=admin --port=8989 /var/log
````

## Make Alias

```sh
alias clearlog='sudo rm -rf /var/log/apache2/*; sudo service apache2 restart'
alias clearlog='sudo rm -rf /var/log/nginx/*; sudo service nginx restart'
```

## Restart Bash

```sh
source .bashrc
```

## Test Command

```sh
clearlog
```
