namespace :main do
  require 'test/unit'
  task :default => "AllTests"
  
  task :AllTests do
    Rake::Task["main:vTest"].invoke
    #return er
  end
  
  task :vTest do
    require_relative 'main'
    #errorcount = 0
    #if ENV['TRAVIS_BUILD_NUMBER'] == GetTravisBuild()
    #  puts 'Test ID 1: OK'
    #else
    #  puts 'Test ID 1: ERROR'
    #  errorcount++
    #end
    #if ENV['TRAVIS_COMMIT'] == GetCommitBuild()
    #  puts 'Test ID 2: OK'
    #else
    #  puts 'Test ID 2: ERROR'
    #  errorcount++
    #end
    #return errorcount
  end
end
