source "https://rubygems.org"

# Rails itself
gem "rails", "~> 7.2.2", ">= 7.2.2.1"

# Asset pipeline and frontend gems
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false

# Bootstrap and its dependencies
gem "bootstrap", "~> 5.3.0"
gem "sassc-rails"

# Server
gem "puma", ">= 5.0"

# Windows does not include zoneinfo files
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [ :ruby ]
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem "pg"
end
