#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'

set :port, ENV['PORT']
set :bind, ENV['IP']

get '/' do
  slim :index
end
get '/superkey' do
    slim :index2
end