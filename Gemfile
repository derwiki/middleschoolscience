source 'https://rubygems.org'
ruby '2.3.3'

gem 'rails', '4.2.0.beta2'

gem 'haml-rails'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'json'
gem 'meta-tags-helpers'
gem 'responders', '~> 2.0'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'unicorn'
end

group :development, :test do
  gem 'sqlite3'

  # Call 'debugger' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in
  # views
  gem 'web-console', '~> 2.0.0.beta4'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
end
