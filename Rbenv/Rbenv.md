# Rbenv

#### Ubuntu

```sh
sudo apt-get update

sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
```

```sh
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
```

```sh
rbenv install -v 2.2.1
rbenv global 2.2.1

ruby -v
```

```sh
echo "gem: --no-document" > ~/.gemrc
```

```sh
gem install bundler
```

###### Rails

```sh
gem install rails -v 4.2.0

rbenv rehash

rails -v
```

###### MySQL

```sh
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev

gem install mysql2
```
