#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

begin
  require 'apn_on_rails_tasks'
rescue MissingSourceFile => e
  puts e.message
end

ShopList::Application.load_tasks
