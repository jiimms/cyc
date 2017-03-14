source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
gem 'puma', '~> 3.0'
gem 'sass-rails'
gem 'devise'
gem 'devise-bootstrap-views'

gem 'nested_scaffold'

gem 'will_paginate', '~> 3.1.0'
gem 'twitter-bootstrap-rails'
gem "font-awesome-rails"
gem 'bootstrap-will_paginate', '~>0.0.10'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'paperclip'
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
end

group :production do
  gem 'pg'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
