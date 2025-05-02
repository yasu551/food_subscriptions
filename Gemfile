source 'https://rubygems.org'

gem 'rails', '~> 8.0.2'
gem 'propshaft'
gem 'sqlite3'
gem 'puma'
gem 'jsbundling-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'cssbundling-rails'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

gem 'solid_cache'
gem 'solid_queue'
gem 'solid_cable'
gem 'bootsnap', require: false
gem 'kamal', require: false
gem 'thruster', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

gem 'haml-rails'

group :development, :test do
  gem 'debug', platforms: %i[ mri windows ], require: 'debug/prelude'
  gem 'brakeman', require: false
  gem 'rubocop-rails-omakase', require: false
end

group :development do
  gem 'web-console'
  gem 'sgcop', github: 'SonicGarden/sgcop', require: false
  gem 'haml_lint', require: false
  gem 'html2haml', require: false
end
