require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    redirect '/chitter'
  end

  get '/chitter' do
   @peeps = ['This is my first peeps!']
   erb :'chitter/index'
  end

  run! if app_file == $0
end