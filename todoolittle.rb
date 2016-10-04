require 'sinatra'
require 'active_record'
require 'pathname'
require_relative 'controllers/todos'
require_relative 'models/todo'

#Setup for AR use
#Identify Root path for application
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

#Set up the DB
database_config = {:adapter => "sqlite3", :database => "#{APP_ROOT}/db/todoolittle.sqlite3"}

ActiveRecord::Base.establish_connection(database_config)

