source 'http://rubygems.org'

gem 'rails', '3.1.12'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'dynamic_form', '1.1.4'
gem 'devise', '~> 1.4.3'


group :development do
   gem "better_errors"
   gem "binding_of_caller"
   gem 'webrick', '~> 1.3.1'
   gem 'capistrano'
   gem 'cap-ssh-key-man'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
group :production do
   gem 'unicorn'
end

group :test do
  gem 'cucumber-rails','1.0.6', :require => false
  gem 'database_cleaner', '0.7.0'
  gem 'capybara', '1.1.1'
  gem 'factory_girl_rails', '1.2.0'
  gem 'email_spec'
end

group :test, :development do
  gem 'rspec-rails', '~> 2.5'
end
