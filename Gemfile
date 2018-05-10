source 'https://rubygems.org'

gem 'rails', '3.2.22.5'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'

gem 'rake', '< 11.0' #To remove the last_comment error 
#link https://stackoverflow.com/questions/35893584/nomethoderror-undefined-method-last-comment-after-upgrading-to-rake-11
#error message
# FDLMC1727:basic_app ravishankarg$ bundle exec rake db:migrate
# rake aborted!
# NoMethodError: undefined method `last_comment' for #<Rake::Application:0x007fd80e110c18>
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/rspec-core-2.11.1/lib/rspec/core/rake_task.rb:124:in `initialize'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/rspec-rails-2.11.0/lib/rspec/rails/tasks/rspec.rake:19:in `new'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/rspec-rails-2.11.0/lib/rspec/rails/tasks/rspec.rake:19:in `<top (required)>'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/activesupport-3.2.22.5/lib/active_support/dependencies.rb:245:in `load'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/activesupport-3.2.22.5/lib/active_support/dependencies.rb:245:in `block in load'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/activesupport-3.2.22.5/lib/active_support/dependencies.rb:236:in `load_dependency'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/activesupport-3.2.22.5/lib/active_support/dependencies.rb:245:in `load'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/rspec-rails-2.11.0/lib/rspec-rails.rb:10:in `block in <class:Railtie>'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/railtie.rb:194:in `instance_exec'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/railtie.rb:194:in `block in load_tasks'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/railtie.rb:194:in `each'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/railtie.rb:194:in `load_tasks'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/engine.rb:423:in `block in load_tasks'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/application/railties.rb:8:in `each'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/application/railties.rb:8:in `all'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/engine.rb:423:in `load_tasks'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/application.rb:145:in `load_tasks'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/railties-3.2.22.5/lib/rails/railtie/configurable.rb:30:in `method_missing'
# /Users/ravishankarg/Documents/rails_workspace/basic_app/Rakefile:7:in `<top (required)>'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/gems/rake-12.3.1/exe/rake:27:in `<top (required)>'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/bin/ruby_executable_hooks:15:in `eval'
# /Users/ravishankarg/.rvm/gems/ruby-2.2.6/bin/ruby_executable_hooks:15:in `<main>'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '2.11.0'
  gem 'test-unit', '~> 3.0'
end

group :development do
  gem 'annotate', '2.5.0'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl_rails', '4.1.0'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
