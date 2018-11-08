# Capistrano

```sh
vim Gemfile

group :development do
  gem 'capistrano', '~> 3.6.1'
  gem 'capistrano-bundler', '~> 1.2.0'
  gem 'capistrano-rails', '~> 1.1.8'
  gem 'capistrano-rbenv', '~> 2.0.4'
end

bundle --binstubs
cap install STAGES=production
```

```sh
vim Capfile

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/rails'

set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
```
