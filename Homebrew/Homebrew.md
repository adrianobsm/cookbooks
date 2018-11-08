# Homebrew

## Installed Packages

```sh
brew list
brew cask list
```

```sh
brew leaves
```

```sh
brew cleanup
```

## Info

```sh
brew info [package]
```

## How to install older versions

```sh
brew info memcached
cd "$(brew --repo homebrew/core)"
git log master -- Formula/memcached.rb
```

```sh
cd "$(brew --repo homebrew/core)" && git checkout 5ec463decefeaab3d1825b923ad2dbee73ffc6dc
HOMEBREW_NO_AUTO_UPDATE=1 brew install memcached
```

```sh
git checkout master
```

