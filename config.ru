require 'dotenv/load'
require './app.rb'
require 'newrelic_rpm'

run Sinatra::Application
