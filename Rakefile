namespace :main do
  task :AllTests do
    Rake::Task["main:vTest"].invoke
  end
  
  task :vTest do
    require 'main.rb'
    AssertEqual(GetTravisBuild(), ENV['TRAVIS_BUILD_NUMBER'])
    AssertEqual(GetCommitBuild(), ENV['TRAVIS_COMMIT'])
  end
end
