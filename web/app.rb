require 'sinatra'

class HiSinatra < Sinatra::Base
  get '/' do
    "Hey Sinatra!"
  end

  get '/abc' do
    "Hello world"
  end

  get '/:age' do
    "Hi, I'm #{params[:age]} years old."
  end
end