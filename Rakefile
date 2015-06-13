namespace :main do
  task :default => "AllTests"
  
  task :AllTests do
    Rake::Task["main:vTest"].invoke
  end
  
  task :vTest do
    require_relative 'main'
    AssertEqual(GetTravisBuild(), ENV['TRAVIS_BUILD_NUMBER'])
    AssertEqual(GetCommitBuild(), ENV['TRAVIS_COMMIT'])
  end
end
