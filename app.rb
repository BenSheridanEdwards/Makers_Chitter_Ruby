require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/' do
    'This is my first cweet!'
  end

  run! if app_file == $0
end