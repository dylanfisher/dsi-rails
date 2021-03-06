source 'https://rubygems.org'

ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
gem 'pg'

# Sass-powered version of Bootstrap
gem 'bootstrap-sass', '~> 3.3.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.10'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for Active Record.
gem 'friendly_id', '~> 5.1.0'

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'rails-admin-scaffold', '~> 0.1.0'
end

group :development, :test do
  # Use Pry as your rails console
  gem 'pry-rails'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Guard is a command line tool to easily handle events on file system modifications.
  gem 'guard', '~> 2.12.7'
  # Automatically reload your browser as 'view' files are modified: https://github.com/guard/guard-livereload
  gem 'guard-livereload'

  # Mutes assets pipeline log messages https://github.com/evrone/quiet_assets
  gem 'quiet_assets'

  # Entity-Relationship Diagrams for Ruby on Rails: http://rails-erd.rubyforge.org/
  gem 'rails-erd'

  # Autoload dotenv in Rails.
  gem 'dotenv-rails', '~> 2.0.2'
end
