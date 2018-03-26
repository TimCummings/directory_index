# directory_index.rb

require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :home
end
