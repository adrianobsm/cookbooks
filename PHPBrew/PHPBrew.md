# PHPBrew

## Commands

```sh
phpbrew self-update
phpbrew update
phpbrew known
phpbrew variants
phpbrew list
```

## Dependencies

### OS X

```sh
phpbrew lookup-prefix homebrew
brew install libxml2 pcre mhash mcrypt gd jpeg libpng freetype icu4c lcov
```

## Install

```sh
phpbrew --debug install --stdout 7.2 as 7.2-dev +default +mysql
phpbrew switch 7.2-dev
```

## Extensions

```sh
phpbrew extension
```

```sh
phpbrew --debug ext --show-options --show-path
```

```sh
phpbrew --debug ext install [extension]
phpbrew --debug ext show [extension]
phpbrew --debug ext enable [extension]
phpbrew --debug ext disable [extension]
phpbrew --debug ext clean --purge [extension]
```

## Like

```sh
phpbrew install 5.6 as 5.6-dev like 7.2-dev
```

## Clean

```sh
phpbrew clean 7.0-dev
```

## Purge

```sh
phpbrew switch-off
phpbrew purge 7.2-dev
```
