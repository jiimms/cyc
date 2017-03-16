source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails'

gem 'twitter-bootstrap-rails'

gem 'devise'

gem 'devise-bootstrap-views'

gem 'bootstrap-sass'

gem 'nested_scaffold'

gem 'will_paginate', '~> 3.1.0'

gem "font-awesome-rails"
gem 'bootstrap-will_paginate', '~>0.0.10'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'paperclip'
gem 'aws-sdk'
gem 'rspec'

group :development, :test do
  gem 'sqlite3', '1.3.12'
  gem 'byebug',  '9.0.0', platform: :mri

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem "binding_of_caller"
  gem 'annotate'
end

group :production do
  gem 'pg'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'country_select', '~> 3.0'