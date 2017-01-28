source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Core
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'

# Web Server
gem 'puma', '~> 3.0'

# Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-ui-rails', '~> 5.0', '>= 5.0.5'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'paperclip', '~> 4.3', '>= 4.3.6'
gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'

# Admin Panel
gem 'activeadmin', '~> 1.0.0.pre4'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'activeadmin_addons'
gem 'devise', '~> 4.0.0.rc2'

# Other
gem 'friendly_id', '~> 5.1.0'
gem 'kaminari', github: 'amatsuda/kaminari', branch: '0-17-stable'
gem 'ckeditor'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
