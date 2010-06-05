require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name        = "search_for"
    gemspec.summary     = "A simple search generator for ActiveRecord in Rails 3"
    gemspec.description = "This gem will add a chainable \"search_for\" method to your ActiveResource classes, allowing" +
                          "allowing you to pass in a search query and fields to search on."
    gemspec.email       = "moonmaster9000@gmail.com"
    gemspec.files       = FileList['lib/**/*.rb', 'README.rdoc']
    gemspec.homepage    = "http://github.com/moonmaster9000/search_for"
    gemspec.authors     = ["Matt Parker"]
    gemspec.add_dependency('activerecord', '>= 3.0.0.beta3')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
