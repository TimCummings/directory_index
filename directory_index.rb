# directory_index.rb

require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @file_list = Dir.glob('public/*').map { |path| File.split(path).last }.sort
  if params['sort'] == 'descending'
    @file_list.reverse!
    @link = '/'
    @link_text = 'Sort ascending'
  else
    @link = '/?sort=descending'
    @link_text = 'Sort descending'
  end

  erb :home
end
