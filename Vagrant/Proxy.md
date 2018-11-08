# Proxy

```ruby
Vagrant.configure('2') do |config|
  # [...]

  unless Vagrant.has_plugin?('vagrant-proxyconf')
    system('vagrant plugin install vagrant-proxyconf')
  end

  if Vagrant.has_plugin?('vagrant-proxyconf') and ENV['http_proxy'] != '' and ENV['https_proxy'] != ''
    puts "Configuring proxy with \nhttp=\t#{ENV['http_proxy']}\nhttps=\t#{ENV['https_proxy']}"

    config.proxy.http = ENV['http_proxy']
    config.proxy.https = ENV['https_proxy']
    config.proxy.no_proxy = 'localhost,127.0.0.1'
  end
end
```
