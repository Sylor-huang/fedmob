source 'https://gems.ruby-china.com'

ruby '2.7.0'
gem 'rails', '~> 6.0', '>= 6.0.2.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.5', '>= 1.5.3'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'jquery-rails', '~> 4.4'
gem 'sass-rails', '~> 6.0'
#前端页面
gem 'bootstrap', '~> 4.5', '>= 4.5.2'
gem 'bootstrap-sass', '~> 3.4.1'
# 图表功能
gem 'groupdate', '~> 5.1'
gem 'chartkick', '~> 3.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# 分页
gem 'kaminari', '~> 1.2', '>= 1.2.1'
#上传
gem 'carrierwave', '~> 2.1'
#slug显示为中文拼音
gem 'chinese_pinyin'
#默认图像
gem 'letter_avatar', '~> 0.3.8'
#分享
gem 'social-share-button', '~> 1.2', '>= 1.2.3'
#点赞，关注等
gem 'action-store', '~> 1.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.5'
# Use ActiveStorage variant
gem 'mini_magick', '~> 4.10', '>= 4.10.1'
#devise 认证
gem 'devise', '~> 4.7', '>= 4.7.2'

#搜索
gem 'ransack', '~> 2.3', '>= 2.3.2'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
