$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'doc_log/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'doc_log'
  s.version     = DocLog::VERSION
  s.authors     = ['Jay Brodie']
  s.email       = ['jason.d.brodie@gmail.com']
  s.homepage    = 'https://github.com/jbrodie/doc_log'
  s.summary     = 'Allows for sync and local access to DocRaptor log files.'
  s.description = 'Sync and view your DocRaptor log files locally.  Prevents having to give out your login to the service to the entire team.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.2', '>= 4.2.3'
  s.add_dependency 'twitter-bootstrap-rails', '~> 3.2', '>= 3.2.0'
  s.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.4'
  s.add_dependency 'therubyracer', '~> 0.12', '>= 0.12.2'
  s.add_dependency 'sass-rails', '~> 5.0'
  s.add_dependency 'sprockets', '~> 3.2', '>= 3.2.0'
  s.add_dependency 'bootstrap-sass', '3.2.0.2'
  s.add_dependency 'coffee-rails', '~> 4.1', '>= 4.1.0'
  s.add_dependency 'font-awesome-sass', '~> 4.1'
  s.add_dependency 'quiet_assets', '~> 1.0', '>= 1.0.2'
  s.add_dependency 'kaminari', '~> 0.16', '>= 0.16.3'
  s.add_dependency 'ransack', '~> 1.6', '>= 1.6.6'
  s.add_dependency 'doc_raptor', '~> 0.5', '>= 0.5.0'

  s.add_development_dependency 'sqlite3', '~> 0'

end
