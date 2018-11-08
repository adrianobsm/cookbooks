# Installation

## OS X

```sh
brew update
brew doctor
brew upgrade
```

```sh
brew install -v mysql
```

```sh
cp -v $(brew --prefix mysql)/support-files/my-default.cnf $(brew --prefix)/etc/my.cnf
```

```sh
cat >> $(brew --prefix)/etc/my.cnf <<'EOF'

# Echo & Co. changes
max_allowed_packet = 1073741824
innodb_file_per_table = 1
EOF
```

```sh
sed -i '' 's/^#[[:space:]]*\(innodb_buffer_pool_size\)/\1/' $(brew --prefix)/etc/my.cnf
```

```sh
brew tap homebrew/services
```

```sh
brew services start mysql
```

```sh
$(brew --prefix mysql)/bin/mysql_secure_installation
```
