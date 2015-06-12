#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

BUILD = 'Error'
f = File.open("./builddata.txt", "r")
BUILD = f[0]
f.close

get '/' do
  @TRAVISBUILDNUMBER = BUILD
  slim :index
end
get '/superkey' do
  @TRAVISBUILDNUMBER = BUILD
  slim :index2
end
