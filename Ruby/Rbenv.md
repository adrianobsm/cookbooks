# Rbenv

```sh
sudo apt-get install -y build-essential libssl-dev libreadline-dev zlib1g-dev
```

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
```

```sh
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
```

```sh
git clone https://github.com/sstephenson/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
```

```sh
rbenv install 2.3.2
rbenv global 2.3.2
ruby -v
rbenv rehash
```

```sh
echo "gem: --no-document" > ~/.gemrc
gem install bundler
bundle
```
