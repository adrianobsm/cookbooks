# Sass

## Installation

### Ubuntu

```sh
apt-get install automake libtool

git clone https://github.com/sass/libsass.git
git clone https://github.com/sass/sassc.git libsass/sassc

cd libsass

autoreconf --force --install

./configure \
  --disable-tests \
  --enable-shared \
  --prefix=/usr

cd ..


make -C libsass -j5

sudo make -C libsass -j5 install

rm -rf libass
```

#### Command Line Interface

```sh
sudo apt-get install git
sudo apt-get install build-essential

cd /usr/local/lib/

git clone https://github.com/sass/sassc.git --branch 3.2.1 --depth 1
git clone https://github.com/sass/libsass.git --branch 3.2.1 --depth 1

echo 'SASS_LIBSASS_PATH="/usr/local/lib/libsass"' >> /etc/environment

source /etc/environment

echo $SASS_LIBSASS_PATH

export SASS_LIBSASS_PATH=/usr/local/lib/libsass

cd /usr/local/lib/sassc/

make

cd /usr/local/bin/

ln -s ../lib/sassc/bin/sassc sassc
```
