require 'sinatra/base'
require 'sinatra/flash'
require './lib/peep.rb'
require './lib/user.rb'
require './database_link_setup'

class Chitter < Sinatra::Base
  enable :sessions, :method_override
  register Sinatra::Flash

  get '/' do
    redirect '/chitter'
  end

  get '/chitter' do
   @user = User.find(id: session[:user_id])
   @peeps = Peeps.all.reverse
   erb :'chitter/index'
  end

  run! if app_file == $0
end