source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem "chartkick" 
  # 20200719にthermometers/showページのグラフを作る時に追記した。↓のchart-js-railsはrails6ではうまくいかないことが多いらしい。

gem 'groupdate'
  # 20200821に追記。chartkickのグラフの横軸を日付ごとに表示できる。https://freesworder.net/rails-chartkick/

gem 'chart-js-rails', '~> 0.1.4'
  # 20200719にthermometers/showページのグラフを作る時に追記した。

group :development, :test do
  gem 'sqlite3' #デプロイの時に書き足した。geeksalon教材参照。
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise'

group :production do
  gem 'pg'
  #デプロイで書き足した。Railsでは、デフォルトで「sqlite3」もしくは「mysql2」というデータベースが利用されるようになっています。しかし、herokuでは「PostgreSQL」というデーターベースを利用するので設定を変更する必要があるのです。ただ、PostgreSQLを利用するのは「本番環境のみ」なので、「group:production」というオプションを追加して本番環境のみで使うようにしています。
end

gem 'kaminari'
#ページネーションのgem

gem 'gon'
#rubyのデータをjavascriptでも使えるようにするためのgem

gem 'carrierwave'
gem 'cloudinary'
#画像投稿のgem

gem 'dotenv-rails'
#画像投稿の、APIキーを非公開にするgem