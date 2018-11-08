# Extensions

## Intl

### OS X

```sh
brew tap magrathealabs/homebrew-mlabs
brew install icu4c@58.1
```

```sh
brew link icu4c@58.1
```

### Installation

```sh
phpbrew --debug ext install intl
```

```sh
php -i | grep intl
```

## LDAP

### Installation

```sh
phpbrew --debug ext install ldap
```

```sh
php -i | grep ldap
```

## Gettext

### OS X

```sh
brew install gettext
```

### Installation

```sh
sudo find / -name libintl.h
phpbrew --debug ext install gettext -- --with-gettext=/usr/local/Cellar/gettext/0.19.8.1
```

```sh
php -i | grep gettext
```

## Multibyte String

### Installation

```sh
phpbrew --debug ext install mbstring
```

```sh
php -i | grep mbstring
```

## Iconv

### Installation

```sh
phpbrew --debug ext install iconv
```

```sh
php -i | grep iconv
```

## Xdebug

### Installation

```sh
phpbrew --debug ext install xdebug
```

```sh
php -i | grep xdebug
```

## GD

### OS X

```sh
brew install gd
```

### Installation

```sh
phpbrew --debug ext install gd
```

```sh
php -i | grep gd
```
