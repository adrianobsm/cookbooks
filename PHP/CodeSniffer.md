# CodeSniffer

Homebrew install:

```sh
brew install php56
brew install php-code-sniffer
```

Pear install:

```sh
pear install PHP_CodeSniffer
```

Check standards:

```sh
phpcs -i
```

## PhpStorm

Set path of `phpcs`:

`File > Default Settings > Languages & Frameworks > PHP > Code Sniffer`

```
which phpcs
```

Check Code Sniffer validation:

`File > Default Settings > Editor > Inspections > PHP > PHP Code Sniffer validation`

Go to `Coding standard` and select the default standard.