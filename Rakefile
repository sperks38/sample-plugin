begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'weblinc/sample_plugin/version'

desc "Release version #{Weblinc::SamplePlugin::VERSION} of the gem"
task :release do
  host = "https://#{ENV['BUNDLE_GEMS__WEBLINC__COM']}@gems.weblinc.com"

  system "git tag -a v#{Weblinc::SamplePlugin::VERSION} -m 'Tagging #{Weblinc::SamplePlugin::VERSION}'"
  system 'git push --tags'

  system "gem build weblinc-sample_plugin.gemspec"
  system "gem push weblinc-sample_plugin-#{Weblinc::SamplePlugin::VERSION}.gem --host #{host}"
  system "rm weblinc-sample_plugin-#{Weblinc::SamplePlugin::VERSION}.gem"
end


