source "https://rubygems.org"

gem "rails", "3.2.12"
ruby "1.9.3"

gem "devise",                         "~> 2.2.3"
gem "haml-rails",                     "~> 0.3.4"
gem "hashie",                         "~> 1.2.0"
gem "fog",                            "~> 1.5.0"
gem "jquery-rails"
gem "rdiscount",                      "~> 1.6.8"
gem "thin",                           "~> 1.5.0"

group :production do
  gem "pg",                           "~> 0.14.0"
  gem "newrelic_rpm",                 "~> 3.4.1"
end

group :development, :test do
  gem "sqlite3"
  gem "heroku"
  gem "debugger"
  gem "mailcatcher",                  "~> 0.5.10"
  gem "quiet_assets"
  gem "rails-erd"
end

group :development do
  gem "sextant"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "sass-rails",                     "~> 3.2.3"
  gem "coffee-rails",                   "~> 3.2.1"
  gem "bootstrap-sass",                 "~> 2.3.0.1"
  gem "bootstrap-wysihtml5-rails",      "~> 0.3"
  gem "uglifier",                       ">= 1.0.3"
end

# To use ActiveModel has_secure_password
# gem "bcrypt-ruby",                    "~> 3.0.0"

# To use Jbuilder templates for JSON
# gem "jbuilder"

# Use unicorn as the app server
# gem "unicorn"

# Deploy with Capistrano
# gem "capistrano"
