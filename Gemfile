source 'https://rubygems.org'
# source 'https://gems.ruby-china.com'

ruby '2.6.6'
# CORE
gem 'rails', '6.0.3.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'pagy', '~> 3.5'

# TOOLING

# ASSETS AND DELIVERY
gem 'sassc-rails'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'image_processing', '~> 1.2'

# API SUPPORT
gem 'jbuilder', '~> 2.7'


# MAILING
gem "letter_opener", group: :development

# UTILITIES

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'capybara'
  gem 'webdrivers', '~> 4.0' # run selenium tests which include chromes and firefox browser drivers
  gem 'bullet'
  gem 'annotate'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-livereload', '~> 2.5', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
