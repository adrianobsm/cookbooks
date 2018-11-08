# Pyenv

## Installation

### OS X

```sh
xcode-select --install
```

```sh
brew uninstall pyenv
brew update; brew upgrade; brew cleanup
```

```sh
rm -rf ~/.pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
```

```sh
brew install libxml2 libxslt
```

```sh
~/.pyenv/bin/pyenv install -v 2.7.11
~/.pyenv/bin/pyenv rehash
```

```sh
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
```

```sh
pyenv versions
pyenv version
```

```sh
pyenv global 2.7.11
pyenv local 2.7.11
```

###

```sh
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
```

```sh
eval "$(pyenv virtualenv-init -)"
```

### Misc

#### Issue

```sh
CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install -v 2.7.11
```

#### Pygtk

```sh
brew install pygtk
```

```sh
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
```

### Uninstall

```sh
pyenv uninstall 2.7.11
```
