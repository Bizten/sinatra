require 'bundler'
Bundler.require

APP_ROOT = File.expand_path("..", __dir__)

# controller
Dir.glob(File.join(APP_ROOT, 'app', 'controllers', '*.rb')).each { |file| 
require file }

# models
Dir.glob(File.join(APP_ROOT, 'app', 'models', '*.rb')).each { |file| require 
file }

# database configuration
require File.join(APP_ROOT, 'config', 'database')

# TaskManagerAPP settings
class Garage < Sinatra::Base
  set :method_override, true
  set :root, APP_ROOT
  set :views, File.join(APP_ROOT, "app", "views")
  set :public_folder, File.join(APP_ROOT, "app", "public")
end
