# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.7.1'

# Base
gem 'pg'
gem 'puma'
gem 'rake'
gem 'roda'
gem 'sequel'
gem 'sequel_pg'

# Accounts, authentication, authorization
gem 'bcrypt'
gem 'jwt'
# gem 'pundit'
gem 'rodauth'

# Validations
# gem 'dry-validation'

# File upload and processing
# gem 'shrine'
# gem 'image_processing'
# gem 'mini_magick'

# JSON and utilities
gem 'blueprinter'
gem 'dotenv'
gem 'oj'

group :development do
  gem 'pry-byebug'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-sequel', require: false
  gem 'rubocop-thread_safety', require: false
  gem 'sequel-annotate'
end

group :test do
  gem 'factory_bot'
  gem 'fuubar'
  gem 'rack-test'
  gem 'rspec'
  gem 'simplecov', require: false
end
