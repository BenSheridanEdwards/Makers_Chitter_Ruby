require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    redirect '/chitter'
  end

  get '/chitter' do
   @cweets = ['This is my first cweet!']
   erb :'chitter/index'
  end

  run! if app_file == $0
end