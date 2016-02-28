source 'https://rubygems.org'

ruby '2.2.3'
gem 'rails', '4.2.4'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'spring',         group: :development
gem 'carrierwave', '0.10.0'
gem 'will_paginate', '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'bcrypt', '3.1.7'
gem 'fog', '1.36.0'
gem 'devise', '~>3.5', '>= 3.5.5'
gem 'closure_tree'

gem "refile", require: "refile/rails"
gem "refile-mini_magick"

group :production do
  gem "refile-s3"
end

group :development, :test do
  gem "better_errors"
  gem 'sqlite3'
  gem 'pry'
  gem 'faker', '~> 1.6', '>= 1.6.1'
  gem 'guard-rspec', require: false
  gem 'spring-commands-rspec'
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara', '2.4.4'
end
