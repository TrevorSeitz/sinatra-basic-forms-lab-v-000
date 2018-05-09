require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/display' do
    pup = Puppy.new(name, breed, age)
# @latinized_text = pl.piglatinize(@english)
    erb :display_puppy
  end

  # get '/create_puppy.erb' do
  #   erb :create_puppy
  # end

  get '/NEW' do
    @pup = Puppy.new(name, breed, age)

    erb :display_puppy
  end

  # get '/create_puppy.erb' do
  # "Hello World"
  # end

end
