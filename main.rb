#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'slim'

set :port, ENV['PORT'] || 8080
set :bind, ENV['IP'] || '0.0.0.0'

helpers do
  def partial(template, locals = {})
    slim template, :layout => false, :locals => locals
  end
end

#BUILD = 'Error'
#f = File.open("./builddata.txt", "r")
#BUILD = f[0]
#f.close

get '/' do
  #@TRAVISBUILDNUMBER = BUILD
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = 'Home'
  slim :notready
end
get '/superkey' do
  #@TRAVISBUILDNUMBER = BUILD
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = '(DEV) Home'
  slim :index2
end
get '/games' do
  slim :notready
end
get '/games/superkey' do
  slim :games
end
get '/support' do
  slim :notready
end
get '/support/superkey' do
  slim :support
end
get '/community' do
  slim :notready
end
get '/community/superkey' do
  slim :community
end
get '/store' do
  slim :notready
end
get '/store/superkey' do
  slim :store
end
get '/media' do
  slim :notready
end
get '/media/superkey' do
  slim :media
end
not_found do
  slim :404
end
