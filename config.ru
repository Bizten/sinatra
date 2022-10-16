require './config/environment'
require './app/application_controller'
require "bundler"
Bundler.require

require File.expand_path('config/environment', __FILE__)

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run 'rake db:migrate' to resolve the issue.'
end

use Rack::MethodOverride

run Garage
