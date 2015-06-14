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
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = 'Games'
  slim :notready
end
get '/games/superkey' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = '(DEV) Games'
  slim :games
end
get '/support' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = 'Support'
  slim :notready
end
get '/support/superkey' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = '(DEV) Support'
  slim :support
end
get '/community' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = 'Community'
  slim :notready
end
get '/community/superkey' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = '(DEV) Community'
  slim :community
end
get '/store' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = 'Store'
  slim :notready
end
get '/store/superkey' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = '(DEV) Store'
  slim :store
end
get '/media' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = 'Media'
  slim :notready
end
get '/media/superkey' do
  @TRAVISBUILDNUMBER = 'ERROR'
  @PageTitle = 'Media'
  slim :media
end
#not_found do
#  slim :404
#end
