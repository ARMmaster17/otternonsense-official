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

def GetBuildString()
  return "#{ GetTravisBuild() } : #{ GetCommitBuild() }"
end
def GetTravisBuild()
  return "SEDVARBUILDNUM"
end
def GetCommitBuild()
  return "SEDVARCOMMITNUM"
end

get '/' do
  #@TRAVISBUILDNUMBER = BUILD
  @TRAVISBUILDNUMBER = GetBuildString()
  @PageTitle = 'Home'
  slim :index
end
get '/superkey' do
  #@TRAVISBUILDNUMBER = BUILD
  @TRAVISBUILDNUMBER = GetBuildString()
  @PageTitle = '(DEV) Home'
  slim :index2
end
