source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
gem 'mysql2', '0.4.8'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'


gem 'active_model_serializers'
gem 'rake', '< 11.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.6.0'
  gem 'factory_girl_rails','~> 4.8.0'

  #调试工具
  gem "thin"
  # gem "factory_girl_rails", "~> 4.0"
  gem "factory_bot"
  gem "pry-rails", "~> 0.3.2"
  gem 'pry-doc'
  gem 'pry-byebug', "~> 2.0.0"
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # gem 'capybara', '~>2.4.3'
  # gem 'database_cleaner', '~> 1.3.0'
  # gem 'launchy', '~> 2.4.2'
  # gem 'selenium-webdriver', '~> 2.43.0'
  # gem 'faker', '~> 1.4.3'
  gem 'spring-commands-rspec'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]