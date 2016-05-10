ruby '2.2.4'
source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg', '~> 0.18.3'

# Core API Framework gems
gem 'grape', '~> 0.15'
gem 'grape-entity'
gem 'puma', '~> 2.14.0'
gem 'rack-cors', require: 'rack/cors'
gem 'discourse_api'

# HTTP requests
gem 'httparty'

# Auto Documentation
gem 'grape-swagger'

# Asynchronous jobs
gem 'sidekiq'

#sidekiq web dashboard
gem 'sinatra'

# JSON parsing
gem 'oj'
gem 'oj_mimic_json'

# Authentication gems
gem 'jwt', '~> 1.5.2'
gem 'bcrypt', '~> 3.1.10'
gem 'devise'

group :development, :test, :staging, :qa do
  gem 'dotenv'
  gem 'faker'
end

group :development, :test do
  gem 'foreman'
  gem 'rack-console'
  gem 'timecop'
  gem 'pry'
end

group :test, :qa do
  gem 'rack-test'
  gem 'rspec'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
  gem 'airborne'
  gem 'factory_girl'
  gem 'mailinator'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'derailed'
  gem 'spring'
end
