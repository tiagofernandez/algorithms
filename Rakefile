require "rspec/core/rake_task"
require "rcov/rcovtask"
 
task :default => "test"
 
desc "Run all specs."
task :test => "test:spec"

desc "Run test coverage reports."
task :coverage => "test:coverage"

desc "Clean."
task :clean do
  system "rm -rf reports"
end

namespace :test do
  desc "Run all specs."
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.verbose = false
  end
  
  # rcov broken with rspec2 (http://goo.gl/kfzuh)
  RSpec::Core::RakeTask.new(:coverage) do |t|
    t.rcov = true
    t.rcov_opts =  ['--exclude', 'spec']
    t.verbose = false
  end
end