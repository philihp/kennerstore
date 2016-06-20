source 'https://rubygems.org'

ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record, because Heroku
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'active_model_serializers', '~> 0.10.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

end

group :development, :test do
  gem 'byebug'
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem 'ffaker'
  gem "shoulda-matchers"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

end

# Sabisu Explorer is needed in production for asset compilation
gem 'sabisu_rails', github: "IcaliaLabs/sabisu-rails"
gem 'furatto', github: "IcaliaLabs/furatto-rails"
gem 'font-awesome-rails'
gem 'simple_form'

gem 'devise'

group :production do
  gem 'rails_12factor'
  gem 'puma'
end
