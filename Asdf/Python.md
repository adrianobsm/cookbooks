# Python

## Dependencies

### OS X

```sh
brew install openssl readline
```

## Installation

```sh
asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
```

## Version

```sh
asdf list-all python
```

### OS X

#### Version 3.x

```sh
CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl)" asdf install python [version]
```

### Linux

```sh
asdf install python [version]
```

## Setting

```sh
asdf global python [version]
```

```sh
asdf list python
asdf reshim python [version]
```

## Issues

### OS X

#### Zlib Not Available

```
zipimport.ZipImportError: can’t decompress data; zlib not available
```

```sh
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
```
