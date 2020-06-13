# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.7.1'

# Base
gem 'dotenv'
gem 'pg'
gem 'puma'
gem 'roda'
gem 'rodauth'
gem 'sequel'
gem 'sequel_pg'

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-sequel', require: false
  gem 'rubocop-thread_safety', require: false
end

group :test do
  gem 'database_cleaner-sequel'
  gem 'factory_bot'
  gem 'fuubar'
  gem 'rack-test'
  gem 'rspec'
  gem 'simplecov', require: false
end