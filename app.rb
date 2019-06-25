require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    @squared_number = (num ** num) 
    # binding.pry
    @squared_number
  end

  get '/say/:number/:phrase' do
    # "Goodbye, #{@user_name}."
    @phrase = params[:phrase]
    @number = params[:number].to_i
    # binding.pry
    # 1
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #put them to params and concat them all
  end

  get '/:operation/:number1/:number2' do
  
  end

end