namespace :main do
  task :default => "AllTests"
  
  task :AllTests do
    Rake::Task["main:vTest"].invoke
  end
  
  task :vTest do
    require_relative 'main'
    assert_equal(ENV['TRAVIS_BUILD_NUMBER'], GetTravisBuild())
    assert_equal(ENV['TRAVIS_COMMIT'], GetCommitBuild())
  end
end
