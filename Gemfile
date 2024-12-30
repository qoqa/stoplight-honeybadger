# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in stoplight-honeybadger.gemspec
gemspec

gem 'honeybadger', '>= 5.0.0'
gem 'rake', '13.2.1'
gem 'stoplight', '>= 3.0'

group :test, :development do
  gem 'rspec', '~> 3.13.0'

  # Use Rubocop as a ruby static code analyzer
  gem 'rubocop', '~> 1.69.2', require: false
  gem 'rubocop-performance', '~> 1.23.0', require: false
  gem 'rubocop-rake', '~> 0.6.0', require: false
  gem 'rubocop-rspec', '~> 3.3.0', require: false
  gem 'rubocop-thread_safety', '~> 0.6.0', require: false
end
