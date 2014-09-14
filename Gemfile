source 'https://rubygems.org/'

gemspec

# Use my own version until https://github.com/iconara/ione/pull/8 is merged.
gem 'ione', git: 'git@github.com:mimperatore/ione.git'

gem 'rake'
gem 'snappy'
gem 'lz4-ruby'

group :development do
  platforms :mri_19 do
    gem 'perftools.rb'
    gem 'guard'
    gem 'guard-nanoc'
  end
end

group :test do
  gem 'rspec'
  gem 'rspec-collection_matchers'
  gem 'simplecov'
  gem 'cucumber'
  gem 'aruba'
end

group :docs do
  gem 'yard'

  platforms :mri_19 do
    gem 'gherkin'
    gem 'htmlbeautifier'
    gem 'nanoc'
    gem 'nanoc-toolbox'
    gem 'compass'
    gem 'bootstrap-sass'
    gem 'nokogiri'
    gem 'rubypants'
    gem 'rouge'
    gem 'redcarpet'
    gem 'ditaarb'
  end
end
