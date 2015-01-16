source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use sqlite3 as the database for Active Record
gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Style, Views, Template (libraries & tools)
gem 'bootstrap-sass', '~> 3.3.1'
gem 'will_paginate'
gem 'bh', '~> 1.2' # bootstrap helpers
gem 'font-awesome-rails'
gem 'http_accept_language'
gem 'rails_autolink', '~> 1.1.6'

gem 'cells'
gem 'haml-rails'
gem 'nprogress-rails'
gem 'zeroclipboard-rails'

# Form Objects
gem 'reform'
gem 'virtus'

# SEO & Analytics
gem 'seo_helper', '~> 1.0.2'

# Forms & Helpers
gem "bootstrap_form"

# Models
gem 'super_accessors'
gem 'validates_email_format_of'
gem 'ipaddress'
gem 'dalli'
gem 'simple_enum'
gem 'soft_deletion'
gem 'awesome_nested_set'
gem 'stamp', '0.4.0' # does not work with newer versions
gem 'stamp-i18n'
gem 'public_activity'

# User System
gem 'devise'

# Others tools
gem 'aescrypt'
gem 'rails-i18n'
gem 'settingslogic'
gem 'actionpack-action_caching'
gem 'actionpack-page_caching'

# Server Solutions
gem 'puma'
gem 'pusher'
gem 'memoist'

# ACL
gem "pundit"

# papertrail
gem 'remote_syslog_logger'

gem 'exception_notification', github: 'smartinez87/exception_notification'
gem 'slack-notifier'

# 所有環境都綁，包含 production
gem "pry-rails"
gem "awesome_print", require: false

gem 'visionbundles', github: 'afunction/visionbundles'

group :production do
  gem 'newrelic_rpm'
end

group :development, :test do # 也包含 test 是為了讓寫 test case 時也可以 debug
  gem "pry-plus"
  gem "hirb", require: false
  gem "hirb-unicode", require: false
  gem 'simplecov', require: false
  gem "pry-remote"
  gem 'capybara'
  gem 'poltergeist'
  gem 'parallel_tests'
end

group :development do
  gem 'capistrano', '~> 2.15.5', require: false
  gem 'rvm-capistrano'
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'powder'
  gem 'database_cleaner'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'colorize'
end
