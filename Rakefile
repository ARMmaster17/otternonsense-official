namespace :main do
  require 'test/unit'
  task :default => "AllTests"
  
  task :AllTests do
    Rake::Task["main:vTest"].invoke
  end
  
  task :vTest do
    require_relative 'main'
    assert ENV['TRAVIS_BUILD_NUMBER'] == GetTravisBuild()
    assert ENV['TRAVIS_COMMIT'] == GetCommitBuild()
  end
end
