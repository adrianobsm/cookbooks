# NAT

# Improve Internet Connection

```ruby
Vagrant.configure('2') do |config|
  # [...]

  config.vm.provider 'virtualbox' do |vb|
    # [...]

    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end
end
```
