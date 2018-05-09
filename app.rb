require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    # pup = Puppy.new(name, breed, age)
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
binding.pry
    erb :display_puppy
  end

end
