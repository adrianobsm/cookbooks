# Pyenv

## OS X

```sh
brew install pyenv
```

```sh
echo '\nif which rbenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc
```

```sh
pyenv install --list
```

```sh
pyenv install 3.4.3
pyenv rehash
```

```sh
pyenv versions
```

```sh
pyenv local 3.4.3
pyenv global 3.4.3
```

More commands on [GitHub repository](https://github.com/yyuu/pyenv/blob/master/COMMANDS.md).
