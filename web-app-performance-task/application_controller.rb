require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
post '/gem' do
  birth_month=params[:month]
  @result=gem(birth_month)
  @gem=@result[0]
  @pic=@result[1]
  erb :results
end
end