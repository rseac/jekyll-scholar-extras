require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jekyll/scholar/version'

#require 'cucumber/rake/task'
#Cucumber::Rake::Task.new(:features)

task :default => [:features]

#require 'coveralls/rake/task'
#Coveralls::RakeTask.new
#task :test_with_coveralls => [:features, 'coveralls:push']

require 'jekyll/scholar/version'

# Mirror to github without history
task :github do |t|
   system "git checkout --orphan upit"
   system "git commit -m 'Push jekyll-scholar-extras #{Jekyll::ScholarExtras::VERSION} to github' "
   system "git remote add origin git@github.com:rseac/jekyll-scholar-extras.git"
   system "echo 'push to remote without history'"
   system "git push -u origin upit"
   system "git remote remove origin"
   system "git checkout master"
   system "git branch -D upit"
end

# Bring oldest commit to latest 
