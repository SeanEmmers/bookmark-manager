require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.list
    erb :index
  end

  run! if app_file == $0
end