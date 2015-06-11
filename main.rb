#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

get '/' do
  slim :index
end
get '/superkey' do
    slim :index2
end
