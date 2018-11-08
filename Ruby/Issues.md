# Issues

## Could not find a valid gem

```
ERROR: Could not find a valid gem 'rake' (>= 0), here is why: windows
```

```sh
gem sources
gem sources -a http://rubygems.org/
gem sources --remove https://rubygems.org/
gem install rake
```

## Certificate verify failed

```
SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed
```

```sh
https://gist.github.com/luislavena/f064211759ee0f806c88
```

## Failed to build gem native extension

```sh
Building native extensions.  This could take a while...
ERROR: Failed to build gem native extension.
```

```sh
gem update --system
```

```sh
chown -R `whoami`:`whoami` .gemrc
```

```sh
chown -R username:group ~/.gem
chown -R username:group ~/.rbenv
chown -R username:group ~/.rvm
```

## Psych:Module

```
private method load called for Psych:Module
```

```sh
gem update --system
```

## Token

```
NoMethodError (undefined method `[]' for nil:NilClass):
```

Need add `{}` or `nil`.

## Nginx

```
413 Request Entity Too Large
```

```sh
sudo vim /etc/nginx/sites-available/[appname]

server {
  client_max_body_size 8M;
}
```

```sh
sudo service nginx restart
```

## MiniMagick::Error

```
MiniMagick::Error (ImageMagick/GraphicsMagick is not installed):
```

```sh
sudo apt-get install -y imagemagick
```
