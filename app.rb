require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    @squared_num = num**2
    @squared_num.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    returnd = []
    while returnd.length < @number
       returnd << @phrase+", "
    end
    return returnd.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #put them to params and concat them all
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
   @number1 = params[:number1].to_i
   @number2 = params[:number2].to_i
   added = @number1 + @number2
   added.to_s
  #  multiplied = @number1*@number2
  # "#{multiplied}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    # added = @number1 + @number2
    # added.to_s
    multiplied = @number1*@number2
    multiplied.to_s
   end

end