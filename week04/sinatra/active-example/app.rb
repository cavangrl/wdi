require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:sweet_app.sqlite3"