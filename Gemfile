source 'https://rubygems.org'

ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# My gems
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'devise-bootstrap-views'
gem 'devise', '~> 4.3'
gem 'paperclip', '~> 5.0'
gem 'whenever', :require => false
gem 'faker', '~> 1.7', '>= 1.7.3'
gem 'will_paginate', '~> 3.1.0'



gem 'rails', '~> 5.1.2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'sqlite3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
 gem 'pg'
 gem 'rails_12factor'
end
