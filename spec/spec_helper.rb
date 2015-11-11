require 'bundler'
Bundler.require :default, :test

require 'sinatra'
require 'data_mapper'
require 'rack'
require 'byebug'
require 'json'

require_relative '../api.rb'

set :enviroment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
