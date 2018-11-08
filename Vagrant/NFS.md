# NFS

## Dependencies

### CentOS

```sh
sudo yum -y update
sudo yum install -y fuse fuse-devel
```

```sh
cd /usr/local/src
sudo wget http://bindfs.org/downloads/bindfs-1.12.6.tar.gz
sudo tar -xzf bindfs-*
cd bindfs-*
sudo ./configure && sudo make && sudo make install
cd .. && sudo rm -rf bindfs*
```

```sh
usermod -a -G fuse vagrant

exec /bin/bash
```

```sh
cat << EOF | sudo tee -a /etc/fuse.conf
user_allow_other
EOF
```

### Ubuntu

```sh
sudo apt-get update
sudo apt-get install -y bindfs
```

### Windows

```sh
vagrant plugin install vagrant-winnfsd
```

## Configuration

```ruby
Vagrant.configure('2') do |config|
  # [...]

  config.vm.synced_folder '.', '/vagrant', type: 'nfs'
  config.bindfs.bind_folder '/vagrant', '/vagrant', u: 'vagrant', g: 'www-data'
end
```
