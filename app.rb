require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/list' do
    erb :list_puppy
  end

  get '/create_puppy' do
    erb :create_puppy
  end

end
