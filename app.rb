require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/display' do
    erb :display_puppy
  end

  get '/create_puppy.erb' do
    binding.pry
    erb :create_puppy
  end

  get '/NEW' do
    erb :create_puppy
  end

  # get '/create_puppy.erb' do
  # "Hello World"
  # end

end
