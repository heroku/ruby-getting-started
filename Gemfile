source 'https://rubygems.org'
ruby '>= 3.2', '< 4.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.1.2"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.6.3'
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 7.0"

gem 'bootsnap', require: false
gem 'listen'
gem 'dotenv-rails', groups: [:development, :test, :production]
gem 'datadog', require: 'datadog/auto_instrument'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# https://devcenter.heroku.com/articles/h12-request-timeout-in-ruby-mri
gem "rack-timeout", "~> 0.7.0"

# Code Quality & Security Tools
group :development, :test do
  # Code style checker
  gem 'rubocop', '~> 1.66', require: false
  gem 'rubocop-rails', '~> 2.24', require: false
  gem 'rubocop-performance', '~> 1.20', require: false
  gem 'rubocop-rspec', '~> 3.0', require: false
  
  # Security vulnerability scanner
  gem 'brakeman', '~> 6.0', require: false
  
  # N+1 query detection
  gem 'bullet', '~> 7.0', require: false
  
  # Code coverage
  gem 'simplecov', '~> 0.22', require: false
  
  # Query analysis
  gem 'query_diet', require: false
end
