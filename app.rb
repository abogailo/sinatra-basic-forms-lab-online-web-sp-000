require_relative 'config/environment'

class App < Sinatra::Base


  post '/puppy' do 
    puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @name = puppy.name 
    @breed = puppy.breed 
    @age = puppy.months_old
    erb :display_puppy
  end 
end
