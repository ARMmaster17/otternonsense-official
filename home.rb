#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'

set :port, ENV['PORT']
set :bind, ENV['IP']

get '/' do
  'Hello, world!'
end