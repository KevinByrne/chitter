require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::reloader
  end

  get '/' do
    "This is a peep"
  end

  get '/peeps' do
    peeps = [
      "This is a peep",
      "Wow, it's a hot one today",
      "Liverpool are the best premiership team...FACT!"
    ]
  end

  run! if app_file == $0
end