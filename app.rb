require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::reloader
  end

  get '/' do
    "This is a peep"
  end

  run! if app_file == $0
end