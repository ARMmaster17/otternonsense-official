#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

get '/' do
  @TRAVISBUILDNUMBER = File.open(file, "r")[0]
  slim :index
end
get '/superkey' do
  @TRAVISBUILDNUMBER = File.open(file, "r")[0]
  slim :index2
end
