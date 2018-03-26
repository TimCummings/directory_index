# directory_index.rb

require 'sinatra'
require 'sinatra/reloader'

get '/:sort?' do
  @file_list = Dir.glob('public/*').map { |path| File.split(path).last }.sort
  @file_list.reverse! if params['sort'] == 'descending'

  erb :home
end
