require 'sinatra/base'
require_relative './lib/peeps.rb'

class Chitter < Sinatra::Base

  get '/' do
    redirect '/chitter'
  end

  get '/chitter' do
   erb :'chitter/index'
  end

  run! if app_file == $0
end