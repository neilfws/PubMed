require "rubygems"
require "sinatra"
require "mongo"
require "haml"
require "uri"
require "redcloth"

require "./main"
require "./statistics"
run Sinatra::Application
