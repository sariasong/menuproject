ENV['RACK_ENV'] ||= 'development'

require 'bundler'
require 'sinatra/base'
Bundler.require :default, ENV['RACK_ENV'].to_sym
require_relative 'routes'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require './models/app';

class Food < Sinatra::Base
  set :root, File.dirname(__FILE__)
  enable :sessions
  set :views, Proc.new { File.join(root, "views") }
  register Sinatra::ActiveRecordExtension
  use Rack::MethodOverride
end


