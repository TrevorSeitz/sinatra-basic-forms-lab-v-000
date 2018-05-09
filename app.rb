require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @new_puppy = Puppy.new(params[:name], params[:breed], params[:age])

    # @name = params[:name]
    # @breed = params[:breed]
    # @age = params[:age]

    erb :display_puppy
  end

end
