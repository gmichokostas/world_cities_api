source 'https://rubygems.org'
ruby '2.2.3'

gem 'sinatra'
gem 'rack'
gem 'rake'
gem 'datamapper'
gem 'dm-sqlite-adapter', group: [:test, :development]

group :development do
  gem 'thin'
  gem 'rerun'
end

group :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'byebug'
end

group :production do
  gem 'dm-postgres-adapter'
end
